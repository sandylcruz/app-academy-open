class Message {
  constructor(from = "", to = "", subject = "", body = "") {
    this.from = from;
    this.to = to;
    this.subject = subject;
    this.body = body;
  }
}

let messageDraft = new Message();

const MessageStore = {
  getInboxMessages() {
    return messages.inbox.slice();
  },

  getSentMessages() {
    return messages.sent.slice();
  },

  getMessageDraft() {
    return messageDraft;
  },

  updateDraftField(field, value) {
    messageDraft[field] = value;
  },

  sendDraft() {
    messages.sent.push(messageDraft);
    messageDraft = new Message();
  },
};

const messages = {
  sent: [
    {
      to: "callie@gmail.com",
      subject: "Friends?",
      body: "Callie will you be my friend now",
    },
    {
      to: "linus@gmail.com",
      subject: "You're too much",
      body: "Stop jumping on my back",
    },
  ],
  inbox: [
    {
      from: "linus@gmail.com",
      subject: " Fwd: Fwd: Fwd: Check this out",
      body: "hi mama squeaky",
    },
    {
      from: "callie@mail.com",
      subject: "Questionnaire",
      body: "Take this free quiz to find out I won't be your friend",
    },
  ],
};

module.exports = MessageStore;
