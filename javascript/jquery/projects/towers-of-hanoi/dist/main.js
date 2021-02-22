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

/***/ "./game.js":
/*!*****************!*\
  !*** ./game.js ***!
  \*****************/
/***/ ((module) => {

eval("class Game {\n  constructor() {\n    this.towers = [[1, 2, 3], [], []];\n  }\n\n  isValidMove(startTowerIdx, endTowerIdx) {\n    const startTower = this.towers[startTowerIdx];\n    const endTower = this.towers[endTowerIdx];\n\n    if (startTower.length === 0) {\n      return false;\n    } else if (endTower.length == 0) {\n      return true;\n    } else {\n      const topStartDisc = startTower[startTower.length - 1];\n      const topEndDisc = endTower[endTower.length - 1];\n      return topStartDisc < topEndDisc;\n    }\n  }\n\n  isWon() {\n    // move all the discs to the last or second tower\n    return this.towers[2].length == 3 || this.towers[1].length == 3;\n  }\n\n  move(startTowerIdx, endTowerIdx) {\n    if (this.isValidMove(startTowerIdx, endTowerIdx)) {\n      this.towers[endTowerIdx].push(this.towers[startTowerIdx].pop());\n      return true;\n    } else {\n      return false;\n    }\n  }\n\n  print() {\n    console.log(JSON.stringify(this.towers));\n  }\n\n  promptMove(reader, callback) {\n    this.print();\n    reader.question(\"Enter a starting tower: \", (start) => {\n      const startTowerIdx = parseInt(start);\n      reader.question(\"Enter an ending tower: \", (end) => {\n        const endTowerIdx = parseInt(end);\n        callback(startTowerIdx, endTowerIdx);\n      });\n    });\n  }\n\n  run(reader, gameCompletionCallback) {\n    this.promptMove(reader, (startTowerIdx, endTowerIdx) => {\n      if (!this.move(startTowerIdx, endTowerIdx)) {\n        console.log(\"Invalid move!\");\n      }\n\n      if (!this.isWon()) {\n        // Continue to play!\n        this.run(reader, gameCompletionCallback);\n      } else {\n        this.print();\n        console.log(\"You win!\");\n        gameCompletionCallback();\n      }\n    });\n  }\n}\n\nmodule.exports = Game;\n\n\n//# sourceURL=webpack:///./game.js?");

/***/ }),

/***/ "./src/hanoi-view.js":
/*!***************************!*\
  !*** ./src/hanoi-view.js ***!
  \***************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Game = __webpack_require__(/*! ../game.js */ \"./game.js\");\n\nclass View {\n  constructor(game, $rootEl) {\n    this.game = game;\n    this.$rootEl = $rootEl;\n    this.setupTowers();\n    this.render();\n    console.log(this.$rootEl);\n  }\n\n  bindEvents() {\n    $(\"li\").on(\"click\", (event) => {\n      if (this.game.isOver()) {\n        return;\n      }\n\n      const $clickedItem = $(event.target);\n      this.makeMove($clickedItem);\n    });\n  }\n\n  makeMove($clickedItem) {}\n\n  setupTowers() {\n    const towers = [[], [], []];\n    const $ulItem = $(\"<ul />\");\n\n    for (let i = 0; i < towers.length; i++) {\n      const tower = towers[i];\n      const $liItem = $(\"<li />\");\n\n      $ulItem.append($liItem);\n    }\n\n    this.$rootEl.append($ulItem);\n  }\n\n  render() {}\n}\n\nmodule.exports = View;\n\n\n//# sourceURL=webpack:///./src/hanoi-view.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const View = __webpack_require__(/*! ./hanoi-view.js */ \"./src/hanoi-view.js\");\nconst Game = __webpack_require__(/*! ../game.js */ \"./game.js\");\n\n$(() => {\n  const $rootEl = $(\".hanoi\");\n  const game = new Game();\n  const view = new View(game, $rootEl);\n});\n\n// document.addEventListener(\"DOMContentLoaded\", () => {});\n\n\n//# sourceURL=webpack:///./src/index.js?");

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