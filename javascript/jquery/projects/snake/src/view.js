const Board = require("./board.js");

class View {
  constructor($el) {
    this.$el = $el;
    this.board = new Board();
    // setInterval();
    this.setupGrid();
  }

  handleKeyEvent() {}
  render() {}

  generateRow() {
    // return [
    //   undefined,
    //   undefined,
    //   undefined,
    //   undefined,
    //   undefined,
    //   undefined,
    //   undefined,
    //   undefined,
    //   undefined,
    //   undefined,
    // ];
  }

  setupGrid() {
    // const grid = [this.generateRow(), this.generateRow(), this.generateRow(), this.generateRow(), this.generateRow(), this.generateRow(), this.generateRow(), this.generateRow(), this.generateRow(), this.generateRow()];
    // const $ulItem = $("<ul />")
    // for (let i = 0; i < 10; i++) {
    //   const row = grid[i]
    //   for (let j = 0; j < 10 j++) {
    //     const square = row[j];
    //     const $liItem = $("<li >");
    //     $ulItem.append($liItem)
    //   }
    // }
    // this.$el.append($ulItem)
  }

  updateClasses() {}
  step() {}
}

module.exports = View;
