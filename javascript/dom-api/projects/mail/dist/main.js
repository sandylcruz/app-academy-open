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

/***/ "./src/inbox.js":
/*!**********************!*\
  !*** ./src/inbox.js ***!
  \**********************/
/***/ ((module) => {

eval("module.exports = {\n  render() {\n    const ul = document.createElement(\"ul\");\n    ul.className = \"messages\";\n    ul.innerHTML = \"An Inbox Message\";\n\n    return ul;\n  },\n};\n\n\n//# sourceURL=webpack://mail/./src/inbox.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const Router = __webpack_require__(/*! ./router.js */ \"./src/router.js\");\nconst Inbox = __webpack_require__(/*! ./inbox.js */ \"./src/inbox.js\");\n\nconst routes = {\n  inbox: Inbox,\n};\n\ndocument.addEventListener(\"DOMContentLoaded\", () => {\n  const content = document.querySelector(\".content\");\n\n  const router = new Router(content, routes);\n  router.start();\n\n  window.location.hash = \"#inbox\";\n  const navItems = Array.from(document.querySelectorAll(\".sidebar-nav li\"));\n\n  navItems.forEach((navItem) => {\n    navItem.addEventListener(\"click\", () => {\n      const name = navItem.innerText.toLowerCase();\n      location.hash = name;\n    });\n  });\n});\n\n\n//# sourceURL=webpack://mail/./src/index.js?");

/***/ }),

/***/ "./src/router.js":
/*!***********************!*\
  !*** ./src/router.js ***!
  \***********************/
/***/ ((module) => {

eval("class Router {\n  constructor(node, routes) {\n    this.node = node;\n    this.routes = routes;\n  }\n\n  start() {\n    this.render();\n\n    window.addEventListener(\"hashchange\", () => {\n      this.render();\n    });\n  }\n\n  activeRoute() {\n    const hash = window.location.hash.substr(1);\n    const component = this.routes[hash];\n    return component;\n  }\n\n  render() {\n    this.node.innerHTML = \"\";\n\n    const component = this.activeRoute();\n\n    if (component) {\n      this.node.innerHTML = \"\";\n      const componentNode = component.render();\n      this.node.appendChild(componentNode);\n    } else {\n      this.node.innerHTML = \"\";\n    }\n\n    const pTag = document.createElement(\"p\");\n    pTag.innerHTML = this.activeRoute();\n    this.node.appendChild(pTag);\n  }\n}\n\nmodule.exports = Router;\n\n\n//# sourceURL=webpack://mail/./src/router.js?");

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