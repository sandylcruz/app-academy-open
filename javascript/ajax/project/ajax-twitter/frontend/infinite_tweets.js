const APIUtil = require("./api_util.js");

class InfiniteTweets {
  constructor(el) {
    this.$el = $(el);

    this.handleClick = this.handleClick.bind(this);
    this.$el.on("click", this.handleClick);
  }

  handleClick(event) {
    this.fetchTweets();
    APIUtil.getTweets();
  }

  fetchTweets() {}
}

module.exports = InfiniteTweets;
