const APIUtil = require("./api_util");

const newUserSelect = () => {
  const $select = $("<select></select>");
  $select.attr("name", "tweet[mentioned_user_ids][]");
  const users = window.users;

  users.forEach((user) => {
    const $option = $(`<option value="${user.id}">${user.username}</option>`);
    $select.append($option);
  });

  const $div = $("<div></div>");
  const $a = $(
    "<a href='#remove-mentioned-user' class='remove-mentioned-user'>Remove</a>"
  );
  $div.append($select);
  $div.append($a);

  return $div;
};

class TweetCompose {
  constructor(el) {
    // form is el
    this.$el = $(el);
    this.$addMentions = this.$el.find(".add-mentions");

    this.handleAddMentionsClick = this.handleAddMentionsClick.bind(this);
    this.$addMentions.on("click", this.handleAddMentionsClick);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.$el.on("submit", this.handleSubmit);
    this.$textArea = this.$el.find("textarea");
    this.handleTextAreaInput = this.handleTextAreaInput.bind(this);
    this.$textArea.on("input", this.handleTextAreaInput);
    this.$addMention = this.$el.find(".add-mention");

    this.handleAddMentionClick = this.handleAddMentionClick.bind(this);
    this.$addMention.on("click", this.handleAddMentionClick);
  }

  handleAddMentionsClick(event) {
    const $targetElement = $(event.target);

    if ($(event.currentTarget).find("a").is($targetElement)) {
      this.removeMentionedUser($targetElement);
    }
  }

  removeMentionedUser($clickedATag) {
    $clickedATag.parent().remove();
  }

  handleAddMentionClick(event) {
    const $select = newUserSelect();
    this.$addMentions.append($select);
    // $select.insertBefore(this.$addMention);
  }

  handleTextAreaInput(event) {
    const $strong = this.$el.find("strong");
    const maximumCharacters = 140;
    const numCharactersTextArea = event.target.value.length;
    const numRemainingCharacters = maximumCharacters - numCharactersTextArea;
    const textCountdown = `Number of remaining characters: ${numRemainingCharacters}`;
    $strong.html(textCountdown);
  }

  handleSubmit(event) {
    event.preventDefault();

    const data = this.$el.serializeJSON();
    APIUtil.createTweet(data).then((data) => {
      console.log("It works");
      this.handleSuccess(data);
    });

    const $inputs = this.$el.find(":input");
    $inputs.attr("disabled", true);
  }

  clearInput() {
    const $inputs = this.$el
      .find(":input")
      .not("[type='submit']")
      .not("[type='button']");

    $inputs.val("");
    const $strong = this.$el.find("strong");
    $strong.html("");
    this.$addMentions.html("");
  }

  handleSuccess(data) {
    const $inputs = this.$el.find(":input");
    $inputs.attr("disabled", false);
    this.clearInput();
    const $ul = $(this.$el.attr("data-tweets-ul"));
    const $li = $(`<li>${data.content}</li>`);
    $ul.prepend($li);
  }
}

module.exports = TweetCompose;
