const Game = require("../game");

class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.setupBoard();
    this.bindEvents();
  }

  bindEvents() {
    $("li").on("click", (event) => {
      console.log(event);
      const $clickedItem = $(event.target);
      $clickedItem.text(this.game.currentPlayer);
      const position = $clickedItem.attr("data-position");
      const coordinatePair = JSON.parse("[" + position + "]");

      console.log(coordinatePair); // turn position into coordinate pair, then pass coordinate pair to this.game.playMove
      this.game.playMove(coordinatePair);
    });
  }

  makeMove($square) {}

  generateRow() {
    return [undefined, undefined, undefined];
  }

  setupBoard() {
    const grid = [this.generateRow(), this.generateRow(), this.generateRow()];

    const $ulItem = $("<ul />");

    for (let i = 0; i < grid.length; i++) {
      const row = grid[i];

      for (let j = 0; j < row.length; j++) {
        const item = row[j];
        const $liItem = $("<li />");
        const position = `${i}, ${j}`;
        $liItem.attr("data-position", position);

        $ulItem.append($liItem);
      }
    }

    this.$el.append($ulItem);
  }
}

module.exports = View;
