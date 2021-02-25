const Board = require("./board.js");
const Coord = require("./coord.js");

KEYS = {
  38: "N",
  39: "E",
  40: "S",
  37: "W",
};

class View {
  constructor($el) {
    this.$el = $el;
    this.board = new Board(20);
    this.setupElements();
    this.render();

    this.handleKeyEvent = this.handleKeyEvent.bind(this);
    this.step = this.step.bind(this);

    $(window).on("keydown", this.handleKeyEvent);
    this.step();
    window.setInterval(this.step, 1000);
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
        html += `<li data-coordinate="${i}, ${j}"></li>`;
      }
      html += "</ul>";
    }

    this.$el.html(html);
    this.$li = this.$el.find("li");
  }

  coordinateAsString(coordinate) {
    return `${coordinate.i}, ${coordinate.j}`;
  }

  render() {
    $("li").removeClass();

    for (let i = 0; i < this.board.dimension; i++) {
      const row = [];

      for (let j = 0; j < this.board.dimension; j++) {
        const coordinate = new Coord(i, j);
        const apple = this.board.apple;

        if (coordinate.equals(apple.position)) {
          const appleCoordinate = this.coordinateAsString(coordinate);

          const $appleElement = $(`li[data-coordinate="${appleCoordinate}"]`);
          $appleElement.addClass("apple");
        }
      }
    }
  }

  updateClasses() {}

  step() {
    this.board.snake.move();
    this.render();
  }
}

module.exports = View;
