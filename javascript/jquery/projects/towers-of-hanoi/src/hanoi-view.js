const Game = require("../game.js");

class View {
  constructor(game, $rootEl) {
    this.game = game;
    this.$rootEl = $rootEl;
    this.setupTowers();
    this.render();
    this.bindEvents();
  }

  bindEvents() {
    let startTowerIndex = null;

    $("ul").on("click", (event) => {
      if (this.game.isWon()) {
        return;
      }

      const $clickedItem = $(event.target);
      const towerIndex = $clickedItem.attr("data-position");

      if (startTowerIndex === null) {
        startTowerIndex = towerIndex;
      } else if (startTowerIndex === towerIndex) {
        alert("invalid move");
      } else {
        this.makeMove(startTowerIndex, towerIndex);
        startTowerIndex = null;
      }

      // this.makeMove($clickedItem);
    });
  }

  makeMove($clickedItem) {
    // Update game logic
    let startTowerIndex = $clickedItem.attr("data-position");
    let endTowerIndex = $clickedItem.attr("data-position");
    console.log(startTowerIndex);
    console.log(endTowerIndex);
    this.game.move(startTowerIndex, endTowerIndex);

    // Update DOM
    $clickedItem.addClass(selected);

    // Handle end game state
    if (this.game.isWon()) {
      alert("You won!");
    }
  }

  setupTowers() {
    const towers = [[undefined], [undefined], [undefined]];

    for (let i = 0; i < towers.length; i++) {
      const $ulItem = $("<ul />");
      const tower = towers[i];

      for (let j = 0; j < towers.length; j++) {
        const $liItem = $("<li />");

        if (i === 0) {
          const classToUse = `disk-${j}`;
          const position = `${j}`;
          console.log(position);
          $liItem.addClass(classToUse);

          $liItem.attr("data-position", position);
        }

        $ulItem.append($liItem);
      }

      this.$rootEl.append($ulItem);
    }
  }

  render() {}
}

module.exports = View;
