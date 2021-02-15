const Asteroid = require("./asteroid");

function Game({ height, width }) {
  this.height = height;
  this.width = width;
  this.addAsteroids();
}

Game.NUM_ASTEROIDS = 15;

Game.prototype.addAsteroids = function () {
  const asteroids = [];

  for (let i = 0; i < Game.NUM_ASTEROIDS; i++) {
    const newAsteroid = new Asteroid({ pos: this.randomPosition() });
    asteroids.push(newAsteroid);
  }

  this.asteroids = asteroids;
};

Game.prototype.randomPosition = function () {
  const x = Math.random() * this.width;
  const y = Math.random() * this.height;
  const coordinatePair = [x, y];

  return coordinatePair;
};

Game.prototype.draw = function (context) {
  context.clearRect(0, 0, this.width, this.height);

  for (let i = 0; i < this.asteroids.length; i++) {
    const asteroid = this.asteroids[i];

    asteroid.draw(context);
  }
};

Game.prototype.moveObjects = function () {
  this.asteroids.forEach((asteroid) => {
    asteroid.move();
  });
};

module.exports = Game;
