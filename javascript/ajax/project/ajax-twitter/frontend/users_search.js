const APIUtil = require("./api_util.js");

class UsersSearch {
  constructor(el) {
    this.$el = $(el);
    this.$input = this.$el.find("input");
    this.$ul = this.$el.find("ul");

    this.handleInput = this.handleInput.bind(this);

    this.$input.on("input", this.handleInput);
  }

  handleInput(event) {
    console.log(event.target.value);
    APIUtil.searchUsers(event.target.value).then((data) => {
      console.log(data);
    });
  }
}

module.exports = UsersSearch;
