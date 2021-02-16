const Game = require("./game");

function GameView(options) {
  this.game = new Game({
    height: window.innerHeight,
    width: window.innerWidth,
  });
  this.context = options.context;
}

GameView.prototype.start = function () {
  function tick() {
    this.game.step();
    this.game.draw(this.context);
  }
  const boundTick = tick.bind(this);
  setInterval(boundTick, 20);
  this.bindKeyHandlers();
};

GameView.prototype.bindKeyHandlers = function () {
  function handleUp() {
    this.game.ship.power([0, -1]);
  }

  function handleRight() {
    this.game.ship.power([1, 0]);
  }

  function handleLeft() {
    this.game.ship.power([-1, 0]);
  }

  function handleDown() {
    this.game.ship.power([0, 1]);
  }

  const boundHandleUp = handleUp.bind(this);
  const boundHandleRight = handleRight.bind(this);
  const boundHandleLeft = handleLeft.bind(this);
  const boundHandleDown = handleDown.bind(this);

  window.key("w", boundHandleUp);
  window.key("d", boundHandleRight);
  window.key("a", boundHandleLeft);
  window.key("s", boundHandleDown);
};

module.exports = GameView;
