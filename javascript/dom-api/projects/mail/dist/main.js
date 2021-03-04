/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/compose.js":
/*!************************!*\
  !*** ./src/compose.js ***!
  \************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const MessageStore = __webpack_require__(/*! ./message_store.js */ \"./src/message_store.js\");\n\nmodule.exports = {\n  render() {\n    const container = document.createElement(\"div\");\n    container.className = \"new-message\";\n    container.innerHTML = this.renderForm();\n    container.addEventListener(\"change\", (event) => {\n      const currentTarget = event.target;\n      const nameField = event.target.name;\n      const valueField = event.target.value;\n      MessageStore.updateDraftField(nameField, valueField);\n    });\n\n    container.addEventListener(\"submit\", (event) => {\n      event.preventDefault();\n      MessageStore.sendDraft();\n      window.location.hash = \"#inbox\";\n    });\n\n    return container;\n  },\n\n  renderForm() {\n    const messageDraft = MessageStore.getMessageDraft();\n\n    const html = `\n    <p class=\"new-message-header\">New Message</p>\n    <form class=\"compose-form\">\n      <input \n        placeholder=\"Recipient\"\n        name=\"to\" \n        type=\"text\" \n        value=\"${messageDraft.to}\">\n      </input>\n\n      <input \n        placeholder=\"Subject\" \n        name=\"subject\" \n        type=\"text\" \n        value=\"${messageDraft.subject}\">\n      </input>\n\n      <textarea \n        name=\"body\" \n        rows=\"20\">Here's some text</textarea>\n\n      <button \n        type=\"submit\" \n        class=\"btn btn-primary submit-message\">Send</button>\n    </form>\n    `;\n\n    return html;\n  },\n};\n\n\n//# sourceURL=webpack://mail/./src/compose.js?");

/***/ }),

/***/ "./src/inbox.js":
/*!**********************!*\
  !*** ./src/inbox.js ***!
  \**********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const MessageStore = __webpack_require__(/*! ./message_store.js */ \"./src/message_store.js\");\n\nmodule.exports = {\n  render() {\n    const ul = document.createElement(\"ul\");\n    ul.className = \"messages\";\n    const allMessages = MessageStore.getInboxMessages();\n\n    allMessages.forEach((message) => {\n      const currentMessage = this.renderMessage(message);\n      ul.appendChild(currentMessage);\n    });\n\n    return ul;\n  },\n\n  renderMessage(message) {\n    const li = document.createElement(\"li\");\n\n    li.className = \"message\";\n    li.innerHTML = `\n      <span class=\"from\">${message.from}</span>\n      <span class=\"subject\">${message.subject}</span>\n      <span class=\"body\">${message.body}</span>\n    `;\n\n    return li;\n  },\n};\n\n\n//# sourceURL=webpack://mail/./src/inbox.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const Router = __webpack_require__(/*! ./router.js */ \"./src/router.js\");\nconst Inbox = __webpack_require__(/*! ./inbox.js */ \"./src/inbox.js\");\nconst Sent = __webpack_require__(/*! ./sent.js */ \"./src/sent.js\");\nconst Compose = __webpack_require__(/*! ./compose.js */ \"./src/compose.js\");\n\nconst routes = {\n  inbox: Inbox,\n  sent: Sent,\n  compose: Compose,\n};\n\ndocument.addEventListener(\"DOMContentLoaded\", () => {\n  const content = document.querySelector(\".content\");\n\n  const router = new Router(content, routes);\n  router.start();\n\n  window.location.hash = \"#inbox\";\n  const navItems = Array.from(document.querySelectorAll(\".sidebar-nav li\"));\n\n  navItems.forEach((navItem) => {\n    navItem.addEventListener(\"click\", () => {\n      const name = navItem.innerText.toLowerCase();\n      location.hash = name;\n    });\n  });\n});\n\n\n//# sourceURL=webpack://mail/./src/index.js?");

/***/ }),

/***/ "./src/message_store.js":
/*!******************************!*\
  !*** ./src/message_store.js ***!
  \******************************/
/***/ ((module) => {

eval("class Message {\n  constructor(from = \"\", to = \"\", subject = \"\", body = \"\") {\n    this.from = from;\n    this.to = to;\n    this.subject = subject;\n    this.body = body;\n  }\n}\n\nlet messageDraft = new Message();\n\nconst MessageStore = {\n  getInboxMessages() {\n    return messages.inbox.slice();\n  },\n\n  getSentMessages() {\n    return messages.sent.slice();\n  },\n\n  getMessageDraft() {\n    return messageDraft;\n  },\n\n  updateDraftField(field, value) {\n    messageDraft[field] = value;\n  },\n\n  sendDraft() {\n    messages.sent.push(messageDraft);\n    messageDraft = new Message();\n  },\n};\n\nconst messages = {\n  sent: [\n    {\n      to: \"callie@gmail.com\",\n      subject: \"Friends?\",\n      body: \"Callie will you be my friend now\",\n    },\n    {\n      to: \"linus@gmail.com\",\n      subject: \"You're too much\",\n      body: \"Stop jumping on my back\",\n    },\n  ],\n  inbox: [\n    {\n      from: \"linus@gmail.com\",\n      subject: \" Fwd: Fwd: Fwd: Check this out\",\n      body: \"hi mama squeaky\",\n    },\n    {\n      from: \"callie@mail.com\",\n      subject: \"Questionnaire\",\n      body: \"Take this free quiz to find out I won't be your friend\",\n    },\n  ],\n};\n\nmodule.exports = MessageStore;\n\n\n//# sourceURL=webpack://mail/./src/message_store.js?");

/***/ }),

/***/ "./src/router.js":
/*!***********************!*\
  !*** ./src/router.js ***!
  \***********************/
/***/ ((module) => {

eval("class Router {\n  constructor(node, routes) {\n    this.node = node;\n    this.routes = routes;\n  }\n\n  start() {\n    this.render();\n\n    window.addEventListener(\"hashchange\", () => {\n      this.render();\n    });\n  }\n\n  activeRoute() {\n    const hash = window.location.hash.substr(1);\n    const component = this.routes[hash];\n    return component;\n  }\n\n  render() {\n    this.node.innerHTML = \"\";\n\n    const component = this.activeRoute();\n\n    if (component) {\n      this.node.innerHTML = \"\";\n      const componentNode = component.render();\n      this.node.appendChild(componentNode);\n    } else {\n      this.node.innerHTML = \"\";\n    }\n  }\n}\n\nmodule.exports = Router;\n\n\n//# sourceURL=webpack://mail/./src/router.js?");

/***/ }),

/***/ "./src/sent.js":
/*!*********************!*\
  !*** ./src/sent.js ***!
  \*********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const MessageStore = __webpack_require__(/*! ./message_store */ \"./src/message_store.js\");\n\nmodule.exports = {\n  render() {\n    const ul = document.createElement(\"ul\");\n    ul.className = \"messages\";\n    const allSentMessages = MessageStore.getSentMessages();\n\n    allSentMessages.forEach((message) => {\n      const currentMessage = this.renderMessage(message);\n      ul.appendChild(currentMessage);\n    });\n\n    return ul;\n  },\n\n  renderMessage(message) {\n    const li = document.createElement(\"li\");\n\n    li.className = \"message\";\n    li.innerHTML = `\n      <span class=\"to\">${message.to}</span>\n      <span class=\"subject\">${message.subject}</span>\n      <span class=\"body\">${message.body}</span>\n    `;\n    return li;\n  },\n};\n\n\n//# sourceURL=webpack://mail/./src/sent.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./src/index.js");
/******/ 	
/******/ })()
;