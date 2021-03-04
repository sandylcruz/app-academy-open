const MessageStore = require("./message_store.js");

module.exports = {
  render() {
    const ul = document.createElement("ul");
    ul.className = "messages";
    const allMessages = MessageStore.getInboxMessages();
    console.log(allMessages);

    allMessages.forEach((message) => {
      const currentMessage = this.renderMessage(message);
      ul.appendChild(currentMessage);
    });

    return ul;
  },

  renderMessage(message) {
    const li = document.createElement("li");

    li.className = "message";
    li.innerHTML = `
      <span class="from">${message.from}</span>
      <span class="subject">${message.subject}</span>
      <span class="body">${message.body}</span>
    `;

    return li;
  },
};
