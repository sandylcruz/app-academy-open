require("./board.js");

class View {
  constructor($el) {
    this.$el = $el;
    this.board = new Board();
    setInterval();
  }
}

module.exports = View;
