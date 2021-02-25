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

eval("const Board = __webpack_require__(/*! ./board.js */ \"./src/board.js\");\nconst Coord = __webpack_require__(/*! ./coord.js */ \"./src/coord.js\");\n\nclass Apple {\n  constructor(board) {\n    this.board = board;\n\n    const x = Math.floor(Math.random() * this.board.dimension);\n    const y = Math.floor(Math.random() * this.board.dimension);\n\n    this.position = new Coord(x, y);\n  }\n}\n\nmodule.exports = Apple;\n\n\n//# sourceURL=webpack:///./src/apple.js?");

/***/ }),

/***/ "./src/board.js":
/*!**********************!*\
  !*** ./src/board.js ***!
  \**********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Snake = __webpack_require__(/*! ./snake.js */ \"./src/snake.js\");\nconst Apple = __webpack_require__(/*! ./apple.js */ \"./src/apple.js\");\n\nclass Board {\n  constructor(dimension) {\n    this.dimension = dimension;\n    this.snake = new Snake(this);\n    this.apple = new Apple(this);\n  }\n\n  validPosition(coordinate) {\n    return (\n      coordinate.i >= 0 &&\n      coordinate.i < this.dimension &&\n      coordinate.j >= 0 &&\n      coordinate.j < this.dimension\n    );\n  }\n}\n\nmodule.exports = Board;\n\n\n//# sourceURL=webpack:///./src/board.js?");

/***/ }),

/***/ "./src/coord.js":
/*!**********************!*\
  !*** ./src/coord.js ***!
  \**********************/
/***/ ((module) => {

eval("class Coord {\n  constructor(i, j) {\n    this.i = i;\n    this.j = j;\n  }\n\n  equals(coordinate2) {\n    return this.i === coordinate2.i && this.j === coordinate2.j;\n  }\n\n  isValid(dimension) {\n    return (\n      this.i >= 0 && this.i < dimension && this.j >= 0 && this.j < dimension\n    );\n  }\n\n  plus(coordinate2) {\n    const i = this.i + coordinate2.i;\n    const j = this.j + coordinate2.j;\n\n    return new Coord(i, j);\n  }\n}\n\nmodule.exports = Coord;\n\n\n//# sourceURL=webpack:///./src/coord.js?");

/***/ }),

/***/ "./src/index.js":
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const View = __webpack_require__(/*! ./view.js */ \"./src/view.js\");\nconst Board = __webpack_require__(/*! ./board.js */ \"./src/board.js\");\n\n$(() => {\n  const rootEl = $(\".snake-game\");\n  const board = new Board(20);\n  new View(rootEl);\n});\n\n\n//# sourceURL=webpack:///./src/index.js?");

/***/ }),

/***/ "./src/snake.js":
/*!**********************!*\
  !*** ./src/snake.js ***!
  \**********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Apple = __webpack_require__(/*! ./apple.js */ \"./src/apple.js\");\nconst Coord = __webpack_require__(/*! ./coord.js */ \"./src/coord.js\");\n\nconst DIRECTIONS = {\n  N: new Coord(-1, 0),\n  E: new Coord(0, 1),\n  S: new Coord(1, 0),\n  W: new Coord(0, -1),\n};\n\nclass Snake {\n  constructor(board) {\n    this.direction = \"N\";\n    this.segments = [new Coord(5, 5)];\n    this.board = board;\n  }\n\n  move() {\n    const head = this.segments[0]; // remove tail\n\n    const directionCoordinate = DIRECTIONS[this.direction];\n    const newHead = head.plus(directionCoordinate);\n    if (this.isValid(newHead)) {\n      this.segments.pop();\n      this.segments.unshift(newHead);\n      return true;\n    } else {\n      return false;\n    }\n  }\n\n  turn(newDirection) {\n    this.direction = newDirection;\n  }\n\n  eatApple() {\n    if (this.head() === this.board.apple.position) {\n      return true;\n    } else {\n      return false;\n    }\n  }\n\n  isOccupying() {}\n\n  head() {\n    console.log(this.segments);\n    return this.segments[0];\n  }\n\n  isValid(coordinate) {\n    return coordinate.isValid(this.board.dimension);\n  }\n}\n\nmodule.exports = Snake;\n\n\n//# sourceURL=webpack:///./src/snake.js?");

/***/ }),

/***/ "./src/view.js":
/*!*********************!*\
  !*** ./src/view.js ***!
  \*********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Board = __webpack_require__(/*! ./board.js */ \"./src/board.js\");\nconst Coord = __webpack_require__(/*! ./coord.js */ \"./src/coord.js\");\n\nKEYS = {\n  38: \"N\",\n  39: \"E\",\n  40: \"S\",\n  37: \"W\",\n};\n\nclass View {\n  constructor($el) {\n    this.$el = $el;\n    this.board = new Board(15);\n    this.setupElements();\n    this.render();\n\n    this.handleKeyEvent = this.handleKeyEvent.bind(this);\n    this.step = this.step.bind(this);\n\n    $(window).on(\"keydown\", this.handleKeyEvent);\n    this.step();\n    this.interval = window.setInterval(this.step, 1000);\n  }\n\n  handleKeyEvent(event) {\n    if (event.key === \"ArrowRight\") {\n      this.board.snake.turn(\"E\");\n    } else if (event.key === \"ArrowLeft\") {\n      this.board.snake.turn(\"W\");\n    } else if (event.key === \"ArrowUp\") {\n      this.board.snake.turn(\"N\");\n    } else if (event.key === \"ArrowDown\") {\n      this.board.snake.turn(\"S\");\n    }\n  }\n\n  setupElements() {\n    // inject 10 ul's, inject 10 li's in each ul\n    let html = \"\";\n\n    for (let i = 0; i < this.board.dimension; i++) {\n      html += \"<ul>\";\n      for (let j = 0; j < this.board.dimension; j++) {\n        html += `<li data-coordinate=\"${i}, ${j}\"></li>`;\n      }\n      html += \"</ul>\";\n    }\n\n    this.$el.html(html);\n    this.$li = this.$el.find(\"li\");\n  }\n\n  coordinateAsString(coordinate) {\n    return `${coordinate.i}, ${coordinate.j}`;\n  }\n\n  render() {\n    $(\"li\").removeClass();\n\n    for (let i = 0; i < this.board.dimension; i++) {\n      const row = [];\n\n      for (let j = 0; j < this.board.dimension; j++) {\n        const coordinate = new Coord(i, j);\n        const snake = this.board.snake;\n        const apple = this.board.apple;\n\n        if (coordinate.equals(apple.position)) {\n          const appleCoordinate = this.coordinateAsString(coordinate);\n          const $appleElement = $(`li[data-coordinate=\"${appleCoordinate}\"]`);\n          $appleElement.addClass(\"apple\");\n        } else {\n          const isCoordinatePartOfSnakeBody = this.board.snake.segments.some(\n            (segment) => {\n              return segment.equals(coordinate);\n            }\n          );\n\n          if (isCoordinatePartOfSnakeBody) {\n            const snakeCoordinate = this.coordinateAsString(coordinate);\n            const $snakeElement = $(`li[data-coordinate=\"${snakeCoordinate}\"]`);\n            $snakeElement.addClass(\"snake\");\n          }\n        }\n      }\n    }\n  }\n\n  step() {\n    if (this.board.snake.move()) {\n      this.render();\n    } else {\n      alert(\"You lose\");\n      window.clearInterval(this.interval);\n    }\n  }\n}\n\nmodule.exports = View;\n\n\n//# sourceURL=webpack:///./src/view.js?");

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