const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});


class Game {
  constructor(towers) {
    this.towers = [[1, 2, 3], [], []];
  }


  Game.prototype.promptMove() {   
    console.log(this.towers);

    reader.question(
      "Where should we move from? To where?", (answer) => {
        console.log(`You would like to move from ${answer[0]} to ${answer[1]}`)
        startTowerIdx = answer[0]
        endTowerIdx = answer[1]
        console.log(startTowerIdx, endTowerIdx)
    })
  }
}
