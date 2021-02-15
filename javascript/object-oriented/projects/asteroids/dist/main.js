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

/***/ "./src/asteroid.js":
/*!*************************!*\
  !*** ./src/asteroid.js ***!
  \*************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst utils = __webpack_require__(/*! ./utils.js */ \"./src/utils.js\");\n\nfunction Asteroid(options) {\n  MovingObject.call(this, {\n    pos: options.pos,\n    vel: utils.randomVec(20),\n    radius: Asteroid.RADIUS,\n    color: Asteroid.COLOR,\n  });\n}\n\nAsteroid.COLOR = \"blue\";\nAsteroid.RADIUS = 15;\n\nutils.inherits(Asteroid, MovingObject);\n\nmodule.exports = Asteroid;\n\n\n//# sourceURL=webpack:///./src/asteroid.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/***/ ((module) => {

eval("function MovingObject(options) {\n  this.pos = options.pos; // [100, 200]\n  this.vel = options.vel; // [2, 3]\n  this.radius = options.radius;\n  this.color = options.color;\n}\n\nMovingObject.prototype.draw = function (ctx) {\n  ctx.beginPath();\n  ctx.fillStyle = this.color;\n  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI);\n  ctx.stroke();\n  ctx.fill();\n};\n\nMovingObject.prototype.move = function () {\n  const nextPos = [this.pos[0] + this.vel[0], this.pos[1] + this.vel[1]];\n  this.pos = nextPos;\n};\n\nmodule.exports = MovingObject;\n\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ }),

/***/ "./src/utils.js":
/*!**********************!*\
  !*** ./src/utils.js ***!
  \**********************/
/***/ ((module) => {

eval("function inherits(childClass, parentClass) {\n  function Surrogate() {}\n  Surrogate.prototype = parentClass.prototype;\n  childClass.prototype = new Surrogate();\n  childClass.prototype.constructor = childClass;\n}\n\nfunction randomVec(length) {\n  const deg = 2 * Math.PI * Math.random();\n  return scale([Math.sin(deg), Math.cos(deg)], length);\n}\n\nfunction scale(vec, m) {\n  return [vec[0] * m, vec[1] * m];\n}\n\nmodule.exports = {\n  inherits: inherits,\n  randomVec: randomVec,\n  scale: scale,\n};\n\n\n//# sourceURL=webpack:///./src/utils.js?");

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
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst Asteroid = __webpack_require__(/*! ./asteroid.js */ \"./src/asteroid.js\");\n\nwindow.addEventListener(\"DOMContentLoaded\", () => {\n  const canvasElement = document.getElementById(\"game-canvas\");\n  canvasElement.height = window.innerHeight;\n  canvasElement.width = window.innerWidth;\n  const context = canvasElement.getContext(\"2d\");\n  // const newObject = new MovingObject({\n  //   pos: [100, 50],\n  //   vel: [2, 5],\n  //   radius: 60,\n  //   color: \"red\",\n  // });\n\n  // newObject.draw(context);\n  // setTimeout(() => {\n  //   context.clearRect(0, 0, canvasElement.width, canvasElement.height);\n  //   newObject.move();\n  //   newObject.draw(context);\n  // }, 2000);\n\n  const asteroid = new Asteroid({ pos: [5, 5] });\n  asteroid.draw(context);\n});\n\nwindow.MovingObject = MovingObject;\n\n\n//# sourceURL=webpack:///./src/index.js?");
})();

/******/ })()
;