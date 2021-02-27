const FollowToggle = require("./follow_toggle.js");

$(() => {
  const $buttons = $("button.follow-toggle");
  $buttons.each((index, $button) => {
    new FollowToggle($button, {});
  });
});
