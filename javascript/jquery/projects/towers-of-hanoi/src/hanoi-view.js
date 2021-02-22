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

  makeMove($clickedItem) {}

  setupTowers() {
    const towers = [[], [], []];
    const $ulItem = $("<ul />");

    for (let i = 0; i < towers.length; i++) {
      const tower = towers[i];
      const $liItem = $("<li />");

      $ulItem.append($liItem);
    }

    this.$rootEl.append($ulItem);
  }

  render() {}
}

module.exports = View;
