const APIUtil = require("./api_util.js");

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
