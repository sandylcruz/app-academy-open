const MessageStore = require("./message_store");

module.exports = {
  render() {
    const ul = document.createElement("ul");
    ul.className = "messages";
    const allSentMessages = MessageStore.getSentMessages();

    allSentMessages.forEach((message) => {
      const currentMessage = this.renderMessage(message);
      ul.appendChild(currentMessage);
    });

    return ul;
  },

  renderMessage(message) {
    const li = document.createElement("li");

    li.className = "message";
    li.innerHTML = `
      <span class="to">${message.to}</span>
      <span class="subject">${message.subject}</span>
      <span class="body">${message.body}</span>
    `;
    return li;
  },
};
