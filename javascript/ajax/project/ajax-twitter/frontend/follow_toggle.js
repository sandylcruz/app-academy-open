class FollowToggle {
  constructor(el, options) {
    this.$el = $(el);
    this.userId = this.$el.data("user-id");
    this.followState = this.$el.data("initial-follow-state");
    this.render();
  }

  render() {
    if (this.followState === "unfollowed") {
      this.$el.html("Follow");
    } else if (this.followState === "follow") {
      this.$el.html("Unfollowed");
    }
  }
}

module.exports = FollowToggle;
