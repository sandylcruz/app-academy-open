const Board = require("./board.js");

KEYS = {
  38: "N",
  39: "E",
  40: "S",
  37: "W",
};

class View {
  constructor($el) {
    this.$el = $el;
    this.board = new Board(10);
    this.setupGrid();
    this.render();
    this.handleKeyEvent = this.handleKeyEvent.bind(this);

    $(window).on("keydown", this.handleKeyEvent);

    setInterval;
  }

  handleKeyEvent(event) {
    // console.log(event);
    // console.log(this);

    if (event.key === "ArrowRight") {
      // console.log("Right");
      this.board.snake.turn("E");
    } else if (event.key === "ArrowLeft") {
      // console.log("Left");
      this.board.snake.turn("W");
    } else if (event.key === "ArrowUp") {
      // console.log("Up");
      this.board.snake.turn("N");
    } else if (event.key === "ArrowDown") {
      // console.log("Down");
      this.board.snake.turn("S");
    }
  }

  render() {}

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
