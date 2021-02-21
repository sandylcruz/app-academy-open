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
      if (this.game.isOver()) {
        return;
      }

      const $clickedItem = $(event.target); //html element that is clicked
      this.makeMove($clickedItem);
    });
  }

  makeMove($clickedItem) {
    const {
      game: { currentPlayer },
    } = this;

    // Update game logic via playMove with the parsed position
    const position = $clickedItem.attr("data-position");
    const newPosition = position.split(", "); // ["0", "1"]
    const coordinatePair = newPosition.map((string) => {
      const newNumber = Number(string);
      return newNumber;
    });

    this.game.playMove(coordinatePair);

    // This updates the DOM
    $clickedItem.addClass(currentPlayer);
    $clickedItem.text(currentPlayer);
    $clickedItem.attr("data-is-clicked", true);

    // Handle end game states
    if (this.game.isOver()) {
      const gameWinner = this.game.winner();
      if (gameWinner === "x" || gameWinner === "o") {
        const $node = $(`<h1>You win, ${gameWinner}</h1>`);
        this.$el.append($node);
        if (gameWinner === "x") {
          this.$el.addClass("is-won-x");
        } else {
          this.$el.addClass("is-won-o");
        }
      } else if (gameWinner === null) {
        const $node = $("<h1>It's a draw</h1>");
        this.$el.append($node);
        this.$el.addClass("draw");
      }
    }
  }

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
        $liItem.attr("data-is-clicked", false);

        $ulItem.append($liItem);
      }
    }

    this.$el.append($ulItem);
  }
}

module.exports = View;
