class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.setupBoard();
  }

  bindEvents() {}

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

        // check if li item is x or o
        $ulItem.append($liItem);
      }
    }

    this.$el.append($ulItem);
  }
}

module.exports = View;
