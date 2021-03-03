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

/***/ "./src/dom_node_collection.js":
/*!************************************!*\
  !*** ./src/dom_node_collection.js ***!
  \************************************/
/***/ ((module) => {

eval("class DOMNodeCollection {\n  constructor(nodes) {\n    this.nodes = nodes;\n  }\n\n  html(htmlString) {\n    if (htmlString) {\n      const innerHTML = htmlString;\n\n      this.nodes.forEach((node) => {\n        node.innerHTML = htmlString;\n      });\n    } else {\n      const innerHTML = this.nodes[0];\n      return innerHTML;\n    }\n  }\n\n  empty() {\n    this.nodes.forEach((node) => {\n      node.html = \"\";\n    });\n  }\n\n  append(children) {\n    this.nodes.forEach((node) => {\n      node.innerHTML += children;\n    });\n  }\n\n  attr(key, value) {\n    this.nodes.forEach((node) => {\n      node.setAttribute(key, value);\n    });\n  }\n\n  addClass(newClass) {\n    this.nodes.forEach((node) => {\n      node.classList.add(newClass);\n    });\n  }\n  removeClass(oldClass) {\n    this.nodes.forEach((node) => {\n      node.classList.remove(oldClass);\n    });\n  }\n\n  children() {\n    let childNodes = [];\n\n    this.nodes.forEach((node) => {\n      let childNodeList = node.children;\n      childNodes = childNodes.concat(childNodeList);\n    });\n\n    return new DOMNodeCollection(childNodes);\n  }\n\n  parent() {\n    let parentNodes = [];\n\n    this.nodes.forEach((node) => {\n      let parentNodeList = node.parent;\n      parentNodes = parentNodes.concat(parentNodeList);\n    });\n\n    return new DOMNodeCollection(parentNodes);\n  }\n\n  find(selector) {\n    let matches = [];\n\n    this.nodes.forEach((node) => {\n      let nodeList = node.querySelectorAll(selector);\n      matches = matches.concat(nodeList);\n    });\n\n    return new DOMNodeCollection(matches);\n  }\n\n  remove() {\n    this.nodes.forEach((node) => {\n      node.parentNode.removeChildNode(node);\n    });\n  }\n\n  on(event, callback) {\n    this.nodes.forEach((node) => {\n      node.addEventListener(event, callback);\n      if (!node.callbacks) {\n        node.callbacks = {};\n      }\n\n      if (!node.callbacks[event]) {\n        node.callbacks[event] = [];\n      }\n      node.callbacks[event].push(callback);\n    });\n  }\n\n  off(event) {\n    this.nodes.forEach((node) => {\n      if (!node.callbacks) {\n        return;\n      }\n\n      const eventCallbacks = node.callbacks[event];\n\n      if (eventCallbacks) {\n        eventCallbacks.forEach((callback) => {\n          node.removeEventListener(event, callback);\n        });\n\n        node.callbacks[event] = [];\n      }\n    });\n  }\n}\n\nmodule.exports = DOMNodeCollection;\n\n\n//# sourceURL=webpack:///./src/dom_node_collection.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const DOMNodeCollection = __webpack_require__(/*! ./dom_node_collection.js */ \"./src/dom_node_collection.js\");\n\nfunction $l(argument) {\n  if (typeof argument === \"string\") {\n    const foundElements = document.querySelectorAll(argument);\n    const foundElementsArray = Array.from(foundElements);\n    const collection = new DOMNodeCollection(foundElementsArray);\n    return collection;\n  } else if (argument instanceof HTMLElement) {\n    return new DOMNodeCollection([argument]);\n  }\n}\n\nwindow.$l = $l;\n\n\n//# sourceURL=webpack:///./src/index.js?");

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