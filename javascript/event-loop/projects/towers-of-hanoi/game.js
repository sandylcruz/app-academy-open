const readline = require("readline");

const getReader = () =>
  readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

class Game {
  constructor() {
    this.towers = [[1, 2, 3], [], []];
  }
}

Game.prototype.promptMove = function () {
  console.log(this.towers);
  reader = getReader();

  reader.question("Where should we move from? To where?", (answer) => {
    const numberArray = answer.split(" ").map((numberAsString) => {
      return Number(numberAsString);
    });

    console.log(
      `You would like to move from ${numberArray[0]} to ${numberArray[1]}`
    );
    startTowerIdx = numberArray[0];
    endTowerIdx = numberArray[1];
    console.log(startTowerIdx, endTowerIdx);
    reader.close();
  });
};

const game = new Game();
game.promptMove();
