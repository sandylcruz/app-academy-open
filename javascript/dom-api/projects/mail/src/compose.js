const MessageStore = require("./message_store.js");

module.exports = {
  render() {
    const div = document.createElement("div");
    div.className = "new-message";
    div.innerHTML = this.renderForm();

    return div;
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
