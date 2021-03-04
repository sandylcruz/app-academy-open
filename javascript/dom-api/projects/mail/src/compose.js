const MessageStore = require("./message_store.js");

module.exports = {
  render() {
    const container = document.createElement("div");
    container.className = "new-message";
    container.innerHTML = this.renderForm();
    container.addEventListener("change", (event) => {
      const currentTarget = event.target;
      const nameField = event.target.name;
      const valueField = event.target.value;
      MessageStore.updateDraftField(nameField, valueField);
    });

    container.addEventListener("submit", (event) => {
      event.preventDefault();
      MessageStore.sendDraft();
      window.location.hash = "#inbox";
    });

    return container;
  },

  renderForm() {
    const messageDraft = MessageStore.getMessageDraft();

    const html = `
    <p class="new-message-header">New Message</p>
    <form class="compose-form">
      <input 
        placeholder="Recipient"
        name="to" 
        type="text" 
        value="${messageDraft.to}">
      </input>

      <input 
        placeholder="Subject" 
        name="subject" 
        type="text" 
        value="${messageDraft.subject}">
      </input>

      <textarea 
        name="body" 
        rows="20">Here's some text</textarea>

      <button 
        type="submit" 
        class="btn btn-primary submit-message">Send</button>
    </form>
    `;

    return html;
  },
};
