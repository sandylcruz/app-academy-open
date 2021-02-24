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
    this.render();
    this.setupElements();
    this.handleKeyEvent = this.handleKeyEvent.bind(this);

    $(window).on("keydown", this.handleKeyEvent);

    window.setInterval(this.step(), 1000);
  }

  handleKeyEvent(event) {
    if (event.key === "ArrowRight") {
      this.board.snake.turn("E");
    } else if (event.key === "ArrowLeft") {
      this.board.snake.turn("W");
    } else if (event.key === "ArrowUp") {
      this.board.snake.turn("N");
    } else if (event.key === "ArrowDown") {
      this.board.snake.turn("S");
    }
  }

  setupElements() {
    // inject 10 ul's, inject 10 li's in each ul
    let html = "";

    for (let i = 0; i < this.board.dimension; i++) {
      html += "<ul>";
      for (let j = 0; j < this.board.dimension; j++) {
        html += "<li></li>";
      }
      html += "</ul>";
    }

    this.$el.html(html);
    this.$li = this.$el.find("li");
  }

  render() {
    for (let i = 0; i < this.board.dimension; i++) {
      const row = [];

      for (let j = 0; j < this.board.dimension; j++) {
        // console.log(`${i}, ${j}`);
      }
    }
  }

  updateClasses() {}

  step() {
    this.board.snake.move();
    this.board.render();
  }
}

module.exports = View;
