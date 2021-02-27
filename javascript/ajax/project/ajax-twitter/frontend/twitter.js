const FollowToggle = require("./follow_toggle.js");
const UsersSearch = require("./users_search.js");

$(() => {
  const $buttons = $("button.follow-toggle");
  $buttons.each((index, $button) => {
    new FollowToggle($button);
  });
  const $usersSearches = $("nav.users-search");
  $usersSearches.each((index, $usersSearch) => {
    new UsersSearch($usersSearch);
  });
});
