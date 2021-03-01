const FollowToggle = require("./follow_toggle.js");
const UsersSearch = require("./users_search.js");
const TweetCompose = require("./tweet_compose.js");
const InfiniteTweets = require("./infinite_tweets.js");

$(() => {
  const $buttons = $("button.follow-toggle");
  $buttons.each((index, $button) => {
    new FollowToggle($button);
  });
  const $usersSearches = $("nav.users-search");
  $usersSearches.each((index, $usersSearch) => {
    new UsersSearch($usersSearch);
  });
  const $composeTweets = $(".tweet-compose");
  $composeTweets.each((index, $composeTweet) => {
    new TweetCompose($composeTweet);
  });

  const $fetchMores = $(".fetch-more");
  $fetchMores.each((index, $fetchMore) => {
    new InfiniteTweets($fetchMore);
  });
});
