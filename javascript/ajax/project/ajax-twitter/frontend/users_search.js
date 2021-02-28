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
