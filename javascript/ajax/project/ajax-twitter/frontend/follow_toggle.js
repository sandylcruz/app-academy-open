const APIUtil = require("./api_util.js");

class FollowToggle {
  constructor(el) {
    this.$el = $(el);
    this.userId = this.$el.data("user-id");
    this.followState = this.$el.data("initial-follow-state");
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
      this.$el.html("Unfollowed");
      this.$el.attr("disabled", false);
    } else if (this.followState === "following") {
      this.$el.attr("disabled", true);
    } else if (this.followState === "unfollowing") {
      this.$el.attr("disabled", true);
    }
  }
}

module.exports = FollowToggle;
