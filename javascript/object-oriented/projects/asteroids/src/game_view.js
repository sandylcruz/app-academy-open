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
};

module.exports = GameView;
