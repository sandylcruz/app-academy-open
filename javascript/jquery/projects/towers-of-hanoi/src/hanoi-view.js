const Game = require("../game.js");

class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.startTowerIndex = null;
    this.$el.on("click", "ul", this.clickTower.bind(this));

    this.setupTowers();
    this.render();
  }

  clickTower(event) {
    const clickedTowerIndex = $(event.currentTarget).index();

    if (this.startTowerIndex === null) {
      this.startTowerIndex = clickedTowerIndex;
    } else {
      if (!this.game.move(this.startTowerIndex, clickedTowerIndex)) {
        alert("Invalid move");
      }

      this.startTowerIndex = null;
    }

    this.render();

    if (this.game.isWon()) {
      this.$el.off("click");
      this.$el.addClass("game-over");
      alert("You won");
    }
  }

  setupTowers() {
    this.$el.empty();

    let $tower, $disk;

    for (let towerIndex = 0; towerIndex < 3; towerIndex++) {
      $tower = $("<ul />");

      for (let diskIndex = 0; diskIndex < 3; diskIndex++) {
        $disk = $("<li />");
        $tower.append($disk);
      }

      this.$el.append($tower);
    }
  }

  render() {
    const $towers = this.$el.find("ul");
    $towers.removeClass();

    if (this.startTowerIndex !== null) {
      $towers.eq(this.startTowerIndex).addClass("selected");
    }

    this.game.towers.forEach((disks, towerIndex) => {
      $disks.removeClass();

      disks.forEach((diskWidth, diskIndex) => {
        $disks.eq(-1 * (diskIndex + 1).addClass(`disk-${diskWidth}`));
      });
    });
  }
}

module.exports = View;
