/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/api_util.js":
/*!******************************!*\
  !*** ./frontend/api_util.js ***!
  \******************************/
/***/ ((module) => {

const APIUtil = {
  followUser: (id) => {
    return new Promise((resolve) => {
      $.ajax({
        url: `/users/${id}/follow`,
        dataType: "json",
        type: "POST",
        success: () => {
          resolve();
        },
      });
    });
  },

  unfollowUser: (id) => {
    return new Promise((resolve) => {
      $.ajax({
        url: `/users/${id}/follow`,
        dataType: "json",
        type: "DELETE",
        success: () => {
          resolve();
        },
      });
    });
  },

  searchUsers: (queryVal) => {
    return new Promise((resolve) => {
      $.ajax({
        url: `/users/search?query=${queryVal}`,
        dataType: "json",
        type: "GET",
        success: (data) => {
          resolve(data);
        },
      });
    });
  },

  createTweet: (data) => {
    return new Promise((resolve) => {
      $.ajax({
        url: "/tweets",
        dataType: "json",
        type: "POST",
        data: data,
        success: (data) => {
          resolve(data);
        },
      });
    });
  },

  getTweets: (maxCreatedAt) => {
    return new Promise((resolve) => {
      const options = {
        url: "/feed",
        dataType: "json",
        type: "GET",
        success: (data) => {
          resolve(data);
        },
      };
      if (maxCreatedAt) {
        options.data = {
          max_created_at: maxCreatedAt,
        };
      }
      $.ajax(options);
    });
  },
};

module.exports = APIUtil;


/***/ }),

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util.js */ "./frontend/api_util.js");

class FollowToggle {
  constructor(el, options) {
    this.$el = $(el);
    this.userId = this.$el.data("user-id") || options.userId;
    this.followState =
      this.$el.data("initial-follow-state") || options.followState;
    this.render();

    this.$el.on("click", this.handleClick.bind(this));
  }

  handleClick(event) {
    event.preventDefault();

    if (this.followState === "unfollowed") {
      APIUtil.followUser(this.userId).then(() => {
        this.followState = "followed";
        this.render();
      });

      this.followState = "following";
      this.render();
    } else {
      APIUtil.unfollowUser(this.userId).then(() => {
        this.followState = "unfollowed";
        this.render();
      });

      this.followState = "unfollowing";
      this.render();
    }
  }

  render() {
    if (this.followState === "unfollowed") {
      this.$el.html("Follow");
      this.$el.attr("disabled", false);
    } else if (this.followState === "followed") {
      this.$el.html("Unfollow");
      this.$el.attr("disabled", false);
    } else if (this.followState === "following") {
      this.$el.attr("disabled", true);
    } else if (this.followState === "unfollowing") {
      this.$el.attr("disabled", true);
    }
  }
}

module.exports = FollowToggle;


/***/ }),

/***/ "./frontend/infinite_tweets.js":
/*!*************************************!*\
  !*** ./frontend/infinite_tweets.js ***!
  \*************************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util.js */ "./frontend/api_util.js");

class InfiniteTweets {
  constructor(el) {
    this.$el = $(el); // a tag element with fetch-more class

    this.handleClick = this.handleClick.bind(this);
    this.$el.on("click", this.handleClick);
    this.maxCreatedAt = null;
  }

  handleClick(event) {
    this.fetchTweets();
  }

  fetchTweets() {
    APIUtil.getTweets(this.maxCreatedAt).then((tweets) => {
      tweets.forEach((tweet) => {
        const $li = $(`<li>${tweet.content}</li>`);
        const $feed = $("#feed");
        $feed.append($li);
      });
      const lastTweet = tweets[tweets.length - 1];

      if (lastTweet) {
        const nextMaxCreatedAt = lastTweet.created_at;
        this.maxCreatedAt = nextMaxCreatedAt;
      }

      if (tweets.length < 20) {
        const $message = $("<p>No more tweets</p>");
        this.$el.parent().append($message);
        this.$el.remove();
      }
    });
  }
}

module.exports = InfiniteTweets;


/***/ }),

/***/ "./frontend/tweet_compose.js":
/*!***********************************!*\
  !*** ./frontend/tweet_compose.js ***!
  \***********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util */ "./frontend/api_util.js");

const newUserSelect = () => {
  const $select = $("<select></select>");
  $select.attr("name", "tweet[mentioned_user_ids][]");
  const users = window.users;

  users.forEach((user) => {
    const $option = $(`<option value="${user.id}">${user.username}</option>`);
    $select.append($option);
  });

  const $div = $("<div></div>");
  const $a = $(
    "<a href='#remove-mentioned-user' class='remove-mentioned-user'>Remove</a>"
  );
  $div.append($select);
  $div.append($a);

  return $div;
};

class TweetCompose {
  constructor(el) {
    // form is el
    this.$el = $(el);
    this.$addMentions = this.$el.find(".add-mentions");

    this.handleAddMentionsClick = this.handleAddMentionsClick.bind(this);
    this.$addMentions.on("click", this.handleAddMentionsClick);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.$el.on("submit", this.handleSubmit);
    this.$textArea = this.$el.find("textarea");
    this.handleTextAreaInput = this.handleTextAreaInput.bind(this);
    this.$textArea.on("input", this.handleTextAreaInput);
    this.$addMention = this.$el.find(".add-mention");

    this.handleAddMentionClick = this.handleAddMentionClick.bind(this);
    this.$addMention.on("click", this.handleAddMentionClick);
  }

  handleAddMentionsClick(event) {
    const $targetElement = $(event.target);

    if ($(event.currentTarget).find("a").is($targetElement)) {
      this.removeMentionedUser($targetElement);
    }
  }

  removeMentionedUser($clickedATag) {
    $clickedATag.parent().remove();
  }

  handleAddMentionClick(event) {
    const $select = newUserSelect();
    this.$addMentions.append($select);
    // $select.insertBefore(this.$addMention);
  }

  handleTextAreaInput(event) {
    const $strong = this.$el.find("strong");
    const maximumCharacters = 140;
    const numCharactersTextArea = event.target.value.length;
    const numRemainingCharacters = maximumCharacters - numCharactersTextArea;
    const textCountdown = `Number of remaining characters: ${numRemainingCharacters}`;
    $strong.html(textCountdown);
  }

  handleSubmit(event) {
    event.preventDefault();

    const data = this.$el.serializeJSON();
    APIUtil.createTweet(data).then((data) => {
      console.log("It works");
      this.handleSuccess(data);
    });

    const $inputs = this.$el.find(":input");
    $inputs.attr("disabled", true);
  }

  clearInput() {
    const $inputs = this.$el
      .find(":input")
      .not("[type='submit']")
      .not("[type='button']");

    $inputs.val("");
    const $strong = this.$el.find("strong");
    $strong.html("");
    this.$addMentions.html("");
  }

  handleSuccess(data) {
    const $inputs = this.$el.find(":input");
    $inputs.attr("disabled", false);
    this.clearInput();
    const $ul = $(this.$el.attr("data-tweets-ul"));
    const $li = $(`<li>${data.content}</li>`);
    $ul.prepend($li);
  }
}

module.exports = TweetCompose;


/***/ }),

/***/ "./frontend/users_search.js":
/*!**********************************!*\
  !*** ./frontend/users_search.js ***!
  \**********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util.js */ "./frontend/api_util.js");
const FollowToggle = __webpack_require__(/*! ./follow_toggle.js */ "./frontend/follow_toggle.js");

class UsersSearch {
  constructor(el) {
    this.$el = $(el);
    this.$input = this.$el.find("input");
    this.$ul = this.$el.find("ul");

    this.handleInput = this.handleInput.bind(this);

    this.$input.on("input", this.handleInput);
  }

  handleInput(event) {
    APIUtil.searchUsers(event.target.value).then((users) => {
      this.renderResults(users);
    });
  }

  renderResults(users) {
    this.$ul.empty();

    for (let i = 0; i < users.length; i++) {
      const user = users[i];

      const $a = $("<a></a>");
      $a.text(`@${user.username}`);

      const userId = user.id;
      $a.attr("href", `/users/${userId}`);

      const $followToggle = $("<button></button>");
      console.log(FollowToggle);
      new FollowToggle($followToggle, {
        userId: user.id,
        followState: user.followed ? "followed" : "unfollowed",
      });

      const $li = $("<li></li>");
      $li.append($a);
      $li.append($followToggle);
      this.$ul.append($li);
    }
  }
}

module.exports = UsersSearch;


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
const FollowToggle = __webpack_require__(/*! ./follow_toggle.js */ "./frontend/follow_toggle.js");
const UsersSearch = __webpack_require__(/*! ./users_search.js */ "./frontend/users_search.js");
const TweetCompose = __webpack_require__(/*! ./tweet_compose.js */ "./frontend/tweet_compose.js");
const InfiniteTweets = __webpack_require__(/*! ./infinite_tweets.js */ "./frontend/infinite_tweets.js");

$(() => {
  const $buttons = $("button.follow-toggle");
  $buttons.each((index, $button) => {
    new FollowToggle($button);
  });
  const $usersSearches = $("nav.users-search");
  $usersSearches.each((index, $usersSearch) => {
    new UsersSearch($usersSearch);
  });
  const $composeTweets = $(".tweet-compose");
  $composeTweets.each((index, $composeTweet) => {
    new TweetCompose($composeTweet);
  });

  const $fetchMores = $(".fetch-more");
  $fetchMores.each((index, $fetchMore) => {
    new InfiniteTweets($fetchMore);
  });
});

})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map