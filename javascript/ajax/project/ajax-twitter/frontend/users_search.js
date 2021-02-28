const APIUtil = require("./api_util.js");
const FollowToggle = require("./follow_toggle.js");

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
