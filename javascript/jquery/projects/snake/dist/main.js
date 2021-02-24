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

/***/ "./src/apple.js":
/*!**********************!*\
  !*** ./src/apple.js ***!
  \**********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Board = __webpack_require__(/*! ./board.js */ \"./src/board.js\");\nconst Coord = __webpack_require__(/*! ./coord.js */ \"./src/coord.js\");\n\nclass Apple {\n  constructor(board) {\n    this.board = board;\n    this.replace();\n  }\n\n  replace() {\n    const x = Math.floor(Math.random() * this.board.dimension);\n    const y = Math.floor(Math.random() * this.board.dimension);\n\n    this.position = new Coord(x, y);\n  }\n}\n\nmodule.exports = Apple;\n\n\n//# sourceURL=webpack:///./src/apple.js?");

/***/ }),

/***/ "./src/board.js":
/*!**********************!*\
  !*** ./src/board.js ***!
  \**********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Snake = __webpack_require__(/*! ./snake.js */ \"./src/snake.js\");\nconst Apple = __webpack_require__(/*! ./apple.js */ \"./src/apple.js\");\n\nclass Board {\n  constructor(dimension) {\n    this.dimension = dimension;\n    this.snake = new Snake(this);\n    this.apple = new Apple(this);\n  }\n\n  blankGrid(dimension) {\n    const grid = [];\n    for (let i = 0; i < this.dimension; i++) {\n      const row = grid[i];\n      for (let j = 0; j < this.dimension; j++) {\n        row.push(\".\");\n      }\n\n      grid.push(row);\n    }\n    return grid;\n  }\n\n  render(dimension) {\n    const grid = this.blankGrid(this.dimension);\n  }\n\n  validPosition(coordinate) {\n    return (\n      coordinate.i >= 0 &&\n      coordinate.i < this.dimension &&\n      coordinate.j >= 0 &&\n      coordinate.j < this.dimension\n    );\n  }\n}\n\nmodule.exports = Board;\n\n\n//# sourceURL=webpack:///./src/board.js?");

/***/ }),

/***/ "./src/coord.js":
/*!**********************!*\
  !*** ./src/coord.js ***!
  \**********************/
/***/ ((module) => {

eval("class Coord {\n  constructor(i, j) {\n    this.i = i;\n    this.j = j;\n  }\n\n  equals(coordinate2) {\n    return this.i === coordinate2.i && this.j === coordinate2.j;\n  }\n\n  // isOpposite(coordinate2) {\n\n  // }\n\n  plus(coordinate2) {\n    const i = this.i + coordinate2.i;\n    const j = this.j + coordinate2.j;\n\n    return new Coord(i, j);\n  }\n}\n\nmodule.exports = Coord;\n\n\n//# sourceURL=webpack:///./src/coord.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const View = __webpack_require__(/*! ./view.js */ \"./src/view.js\");\nconst Board = __webpack_require__(/*! ./board.js */ \"./src/board.js\");\n\n$(() => {\n  const rootEl = $(\".snake-game\");\n  const board = new Board(10);\n  new View(rootEl);\n});\n\n\n//# sourceURL=webpack:///./src/index.js?");

/***/ }),

/***/ "./src/snake.js":
/*!**********************!*\
  !*** ./src/snake.js ***!
  \**********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Coord = __webpack_require__(/*! ./coord.js */ \"./src/coord.js\");\n\nconst DIRECTIONS = {\n  N: new Coord(-1, 0),\n  E: new Coord(0, 1),\n  S: new Coord(1, 0),\n  W: new Coord(0, -1),\n};\n\nclass Snake {\n  constructor(board) {\n    this.direction = \"N\";\n    this.segments = [[5, 5]];\n    this.board = board;\n  }\n\n  move() {\n    this.segments.pop(); // remove tail\n    const directionCoordinate = DIRECTIONS[this.direction];\n    const newHead = this.head().plus(directionCoordinate);\n    this.segments.unshift(newHead);\n  }\n\n  turn(newDirection) {\n    this.direction = newDirection;\n  }\n\n  eatApple() {}\n\n  isOccupying() {}\n\n  head() {\n    return this.segments[0];\n  }\n\n  isValid() {}\n}\n\nmodule.exports = Snake;\n\n\n//# sourceURL=webpack:///./src/snake.js?");

/***/ }),

/***/ "./src/view.js":
/*!*********************!*\
  !*** ./src/view.js ***!
  \*********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Board = __webpack_require__(/*! ./board.js */ \"./src/board.js\");\n\nKEYS = {\n  38: \"N\",\n  39: \"E\",\n  40: \"S\",\n  37: \"W\",\n};\n\nclass View {\n  constructor($el) {\n    this.$el = $el;\n    this.board = new Board(10);\n    this.setupGrid();\n    this.render();\n    this.handleKeyEvent = this.handleKeyEvent.bind(this);\n\n    $(window).on(\"keydown\", this.handleKeyEvent);\n\n    setInterval;\n  }\n\n  handleKeyEvent(event) {\n    // console.log(event);\n    // console.log(this);\n\n    if (event.key === \"ArrowRight\") {\n      // console.log(\"Right\");\n      this.board.snake.turn(\"E\");\n    } else if (event.key === \"ArrowLeft\") {\n      // console.log(\"Left\");\n      this.board.snake.turn(\"W\");\n    } else if (event.key === \"ArrowUp\") {\n      // console.log(\"Up\");\n      this.board.snake.turn(\"N\");\n    } else if (event.key === \"ArrowDown\") {\n      // console.log(\"Down\");\n      this.board.snake.turn(\"S\");\n    }\n  }\n\n  render() {}\n\n  setupGrid() {\n    // const html = \"\"\n    // for (let i = 0; i < 10; i++) {\n    //   html += \"<ul/>\";\n    //   for (let j = 0; j < 10 j++) {\n    //     html += \"<li/>\"\n    //   }\n    //   html += \"<ul/>\"\n    // }\n    // this.$el.html(html)\n    // this.$li = this.$el.find(\"li\");\n  }\n\n  updateClasses() {}\n  step() {}\n}\n\nmodule.exports = View;\n\n\n//# sourceURL=webpack:///./src/view.js?");

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