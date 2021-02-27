class FollowToggle {
  constructor(el, options) {
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

    $.ajax({
      url: `/users/${eventUserId}/follow`,
      dataType: "json",
      type: this.followState === "unfollowed" ? "POST" : "DELETE",
      success: () => {
        if (this.followState === "followed") {
          this.followState = "unfollowed";
          this.render();
        } else {
          this.followState = "followed";
          this.render();
        }
      },
    });
  }

  render() {
    if (this.followState === "unfollowed") {
      this.$el.html("Follow");
    } else if (this.followState === "followed") {
      this.$el.html("Unfollowed");
    }
  }
}

module.exports = FollowToggle;
