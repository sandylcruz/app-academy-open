const APIUtil = require("./api_util.js");

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
