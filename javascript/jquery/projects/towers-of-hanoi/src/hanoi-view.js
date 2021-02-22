const Game = require("../game.js");

class View {
  constructor(game, $rootEl) {
    this.game = game;
    this.$rootEl = $rootEl;
    this.setupTowers();
    this.render();
    console.log(this.$rootEl);
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
    const towers = [[undefined], [undefined], [undefined]];

    for (let i = 0; i < towers.length; i++) {
      const $ulItem = $("<ul />");

      const tower = towers[i];

      for (let j = 0; j < towers.length; j++) {
        const $liItem = $("<li />");
        if (i === 0) {
          const classToUse = `disk-${j}`;
          $liItem.addClass(classToUse);
        }
        $ulItem.append($liItem);
      }
      this.$rootEl.append($ulItem);
    }
  }

  render() {}
}

module.exports = View;
