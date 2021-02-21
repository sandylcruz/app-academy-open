class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
  }

  bindEvents() {}

  makeMove($square) {}

  generateRow() {
    return [undefined, undefined, undefined];
  }

  setupBoard() {
    const grid = [this.generateRow(), this.generateRow(), this.generateRow()];
  }
}

module.exports = View;
