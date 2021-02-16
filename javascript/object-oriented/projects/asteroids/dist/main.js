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

eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst utils = __webpack_require__(/*! ./utils.js */ \"./src/utils.js\");\n\nfunction Asteroid(options) {\n  MovingObject.call(this, {\n    pos: options.pos,\n    vel: utils.randomVec(3),\n    radius: Asteroid.RADIUS,\n    color: Asteroid.COLOR,\n    game: options.game,\n  });\n}\n\nAsteroid.COLOR = \"blue\";\nAsteroid.RADIUS = 15;\n\nutils.inherits(Asteroid, MovingObject);\n\nmodule.exports = Asteroid;\n\n\n//# sourceURL=webpack:///./src/asteroid.js?");

/***/ }),

/***/ "./src/game.js":
/*!*********************!*\
  !*** ./src/game.js ***!
  \*********************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Asteroid = __webpack_require__(/*! ./asteroid */ \"./src/asteroid.js\");\nconst MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst Utils = __webpack_require__(/*! ./utils.js */ \"./src/utils.js\");\n\nfunction Game({ height, width }) {\n  this.height = height;\n  this.width = width;\n  this.addAsteroids();\n}\n\nGame.NUM_ASTEROIDS = 5;\n\nGame.prototype.addAsteroids = function () {\n  const asteroids = [];\n\n  for (let i = 0; i < Game.NUM_ASTEROIDS; i++) {\n    const newAsteroid = new Asteroid({\n      pos: this.randomPosition(),\n      game: this,\n    });\n    asteroids.push(newAsteroid);\n  }\n\n  this.asteroids = asteroids;\n};\n\nGame.prototype.randomPosition = function () {\n  const x = Math.random() * this.width;\n  const y = Math.random() * this.height;\n  const coordinatePair = [x, y];\n\n  return coordinatePair;\n};\n\nGame.prototype.draw = function (context) {\n  context.clearRect(0, 0, this.width, this.height);\n\n  for (let i = 0; i < this.asteroids.length; i++) {\n    const asteroid = this.asteroids[i];\n\n    asteroid.draw(context);\n  }\n};\n\nGame.prototype.moveObjects = function () {\n  this.asteroids.forEach((asteroid) => {\n    asteroid.move();\n  });\n};\n\nGame.prototype.wrap = function (position) {\n  const x = position[0];\n  const y = position[1];\n\n  const nextX = x >= 0 ? x % this.width : x + this.width;\n  const nextY = y >= 0 ? y % this.height : y + this.height;\n\n  return [nextX, nextY];\n};\n\nGame.prototype.checkCollisions = function () {\n  for (let i = 0; i < this.asteroids.length; i++) {\n    for (let j = i + 1; j < this.asteroids.length; j++) {\n      const object1 = this.asteroids[i];\n      const object2 = this.asteroids[j];\n\n      if (object1.isCollidedWith(object2)) {\n        this.remove(object1);\n        this.remove(object2);\n      }\n    }\n  }\n};\n\nGame.prototype.remove = function (asteroidToRemove) {\n  const newAsteroids = [];\n\n  for (let i = 0; i < this.asteroids.length; i++) {\n    const asteroid = this.asteroids[i];\n    if (asteroidToRemove != asteroid) {\n      newAsteroids.push(asteroid);\n    }\n  }\n\n  this.asteroids = newAsteroids;\n};\n\nGame.prototype.step = function () {\n  this.moveObjects();\n  this.checkCollisions();\n};\n\nmodule.exports = Game;\n\n\n//# sourceURL=webpack:///./src/game.js?");

/***/ }),

/***/ "./src/game_view.js":
/*!**************************!*\
  !*** ./src/game_view.js ***!
  \**************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Game = __webpack_require__(/*! ./game */ \"./src/game.js\");\n\nfunction GameView(options) {\n  this.game = new Game({\n    height: window.innerHeight,\n    width: window.innerWidth,\n  });\n  this.context = options.context;\n}\n\nGameView.prototype.start = function () {\n  function tick() {\n    this.game.step();\n    this.game.draw(this.context);\n  }\n  const boundTick = tick.bind(this);\n  setInterval(boundTick, 20);\n};\n\nmodule.exports = GameView;\n\n\n//# sourceURL=webpack:///./src/game_view.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const utils = __webpack_require__(/*! ./utils.js */ \"./src/utils.js\");\n\nfunction MovingObject(options) {\n  this.pos = options.pos; // [100, 200]\n  this.vel = options.vel; // [2, 3]\n  this.radius = options.radius;\n  this.color = options.color;\n  this.game = options.game;\n}\n\nMovingObject.prototype.draw = function (ctx) {\n  ctx.beginPath();\n  ctx.fillStyle = this.color;\n  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI);\n  ctx.stroke();\n  ctx.fill();\n};\n\nMovingObject.prototype.move = function () {\n  const nextPos = [this.pos[0] + this.vel[0], this.pos[1] + this.vel[1]];\n  const wrappedNextPosition = this.game.wrap(nextPos);\n\n  this.pos = wrappedNextPosition;\n};\n\nMovingObject.prototype.isCollidedWith = function (otherObject) {\n  const centerDistance = utils.dist(this.pos, otherObject.pos);\n  const totalDistance = this.radius + otherObject.radius;\n  // console.log(\"***\", centerDistance);\n  return centerDistance < totalDistance;\n};\n\nmodule.exports = MovingObject;\n\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ }),

/***/ "./src/utils.js":
/*!**********************!*\
  !*** ./src/utils.js ***!
  \**********************/
/***/ ((module) => {

eval("function inherits(childClass, parentClass) {\n  function Surrogate() {}\n  Surrogate.prototype = parentClass.prototype;\n  childClass.prototype = new Surrogate();\n  childClass.prototype.constructor = childClass;\n}\n\nfunction randomVec(length) {\n  const deg = 2 * Math.PI * Math.random();\n  return scale([Math.sin(deg), Math.cos(deg)], length);\n}\n\nfunction scale(vec, m) {\n  return [vec[0] * m, vec[1] * m];\n}\n\nfunction dist(pos1, pos2) {\n  return Math.sqrt(\n    Math.pow(pos1[0] - pos2[0], 2) + Math.pow(pos1[1] - pos2[1], 2)\n  );\n}\n\nmodule.exports = {\n  dist: dist,\n  inherits: inherits,\n  randomVec: randomVec,\n  scale: scale,\n};\n\n\n//# sourceURL=webpack:///./src/utils.js?");

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
eval("const GameView = __webpack_require__(/*! ./game_view.js */ \"./src/game_view.js\");\n\nwindow.addEventListener(\"DOMContentLoaded\", () => {\n  const canvasElement = document.getElementById(\"game-canvas\");\n  canvasElement.height = window.innerHeight;\n  canvasElement.width = window.innerWidth;\n  const context = canvasElement.getContext(\"2d\");\n  const gameView = new GameView({ context: context });\n  gameView.start();\n});\n\n\n//# sourceURL=webpack:///./src/index.js?");
})();

/******/ })()
;