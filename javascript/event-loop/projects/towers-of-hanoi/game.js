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
    const startTowerIdx = numberArray[0];
    const endTowerIdx = numberArray[1];
    console.log(startTowerIdx, endTowerIdx);
    reader.close();
  });
};

Game.prototype.move = function (startTowerIdx, endTowerIdx) {
  console.log(this.towers);

  if (this.isValidMove(startTowerIdx, endTowerIdx)) {
    const sourceStack = this.towers[startTowerIdx];
    const destinationStack = this.towers[endTowerIdx];
    const itemToMove = sourceStack.shift();
    destinationStack.unshift(itemToMove);
    console.log(this.towers);

    return true;
  } else {
    return false;
  }
};
const game = new Game();
console.log(game.move(0, 2));
console.log(game.move(0, 1));
console.log(game.move(2, 1));
console.log(game.move(0, 2));
console.log(game.move(1, 0));
console.log(game.move(1, 2));
console.log(game.move(0, 2));

Game.prototype.isWon = function () {
  return this.towers[1].length === 3 || this.towers[2].length === 3;
};

// const game = new Game();
// game.move(0, 1);
// console.log(game.isWon);

Game.prototype.run = function (completionCallback) {
  console.log(this.towers);

  this.promptMove(startTowerIdx, endTowerIdx);
  if (!this.Move) {
    console.log("Invalid move");
  }

  if (!this.isWon) {
    this.run(reader, completionCallback);
  } else {
    console.log(this.towers);
    console.log("You won!");
  }
};
// const game = new Game();
// game.run;
// console.log(game.move(0, 1));
// console.log(game.print);
// console.log(game.run);
