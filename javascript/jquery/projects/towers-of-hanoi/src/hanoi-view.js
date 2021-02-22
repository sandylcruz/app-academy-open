const Game = require("../game.js");

class View {
  constructor(game, $rootEl) {
    this.game = game;
    this.$rootEl = $rootEl;
    this.setupTowers();
    this.render();
  }

  bindEvents() {
    $("li").on("click", (event) => {
      if (this.game.isOver()) {
        return;
      }

      const $clickedItem = $(event.target);
      this.makeMove($clickedItem);
    });
  }

  makeMove() {}

  setupTowers() {
    const towers = [[1, 2, 3], [], []];
  }

  render() {}
}
