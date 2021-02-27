const FollowToggle = require("./follow_toggle.js");

$(() => {
  const $buttons = $("button.follow-toggle");
  $buttons.each((index, $button) => {
    console.log("hi");
    new FollowToggle($button, {});
  });
});
