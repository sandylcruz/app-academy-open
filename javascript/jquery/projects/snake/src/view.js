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
    // const html = ""
    // for (let i = 0; i < 10; i++) {
    //   html += "<ul/>";
    //   for (let j = 0; j < 10 j++) {
    //     html += "<li/>"
    //   }
    //   html += "<ul/>"
    // }
    // this.$el.html(html)
    // this.$li = this.$el.find("li");
  }

  updateClasses() {}
  step() {}
}

module.exports = View;
