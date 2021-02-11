const readline = require("readline");

const getReader = () =>
  readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

function Game() {
  this.towers = [[1, 2, 3], [], []];
}

Game.prototype.isValidMove = function (startTowerIdx, endTowerIdx) {
  if (startTowerIdx < 0 || startTowerIdx > 2) {
    return false;
  } else if (endTowerIdx < 0 || endTowerIdx > 2) {
    return false;
  } else if (this.towers[startTowerIdx].length === 0) {
    return false;
  } else if (this.towers[endTowerIdx].length === 0) {
    return true;
  }

  const itemAtSource = this.towers[startTowerIdx][0];
  const itemAtDestination = this.towers[endTowerIdx][0];

  if (itemAtSource < itemAtDestination) {
    return true;
  } else {
    return false;
  }
};
const game = new Game();
console.log(game.isValidMove(3, 1));
console.log(game.isValidMove(2, 0));
console.log(game.isValidMove(0, 2));
console.log(game.isValidMove(2, 1));

// Game.prototype.promptMove = function () {
//   console.log(this.towers);
//   reader = getReader();

//   reader.question("Where should we move from? To where?", (answer) => {
//     const numberArray = answer.split(" ").map((numberAsString) => {
//       return Number(numberAsString);
//     });

//     console.log(
//       `You would like to move from ${numberArray[0]} to ${numberArray[1]}`
//     );
//     startTowerIdx = numberArray[0];
//     endTowerIdx = numberArray[1];
//     console.log(startTowerIdx, endTowerIdx);
//     reader.close();
//   });
// };

// const game = new Game();
// game.promptMove();
