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
};

module.exports = APIUtil;


/***/ }),

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util.js */ "./frontend/api_util.js");
const UsersSearch = __webpack_require__(/*! ./users_search.js */ "./frontend/users_search.js");

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
    const followToggle = this;
    const eventUserId = event.target.getAttribute("data-user-id");

    event.preventDefault();

    if (this.followState === "unfollowed") {
      APIUtil.followUser(eventUserId).then(() => {
        this.followState = "followed";
        this.render();
      });

      this.followState = "following";
      this.render();
    } else {
      APIUtil.unfollowUser(eventUserId).then(() => {
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
    // console.log(event.target.value);
    APIUtil.searchUsers(event.target.value).then((data) => {
      this.renderResults(data);
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

      const $li = $("<li></li>");
      $li.append($a);
      this.$ul.append($li);

      const $followToggleButton = $("<button></button>");
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

$(() => {
  const $buttons = $("button.follow-toggle");
  $buttons.each((index, $button) => {
    new FollowToggle($button);
  });
  const $usersSearches = $("nav.users-search");
  $usersSearches.each((index, $usersSearch) => {
    new UsersSearch($usersSearch);
  });
});

})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map