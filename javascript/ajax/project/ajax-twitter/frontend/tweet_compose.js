const APIUtil = require("./api_util");

// class JQUERY {
//   on(eventName, callback) {
//     this.addEventListener(eventName, (event) => {
//       callback(event);
//     });
//   }
// }
// const options = [
//   {
//     id: 1,
//     username: "name",
//   },
// ];

const newUserSelect = () => {
  const $select = $("<select></select>");
  const users = window.users;

  users.forEach((user) => {
    const $option = $(`<option>${user.username}</option>`);
    $select.append($option);
  });
  return $select;
};

class TweetCompose {
  constructor(el) {
    // form is el
    this.$el = $(el);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.$el.on("submit", this.handleSubmit);
    this.$textArea = this.$el.find("textarea");
    this.handleTextAreaInput = this.handleTextAreaInput.bind(this);
    this.$textArea.on("input", this.handleTextAreaInput);
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
    const $inputs = this.$el.find(":input").not("[type='Submit']");
    $inputs.val("");
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
