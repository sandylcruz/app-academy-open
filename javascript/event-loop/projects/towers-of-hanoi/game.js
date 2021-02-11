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
  if (startTowerIdx < 0 || startTowerIdx >= 2) {
    return false;
  } else if (endTowerIdx < 0 || endTowerIdx >= 2) {
    return false;
  }

  const itemAtSource = this.towers[startTowerIdx].first;
  const itemAtDestination = this.towers[endTowerIdx].first;

  return itemAtSource < itemAtDestination;
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
    startTowerIdx = numberArray[0];
    endTowerIdx = numberArray[1];
    console.log(startTowerIdx, endTowerIdx);
    reader.close();
  });
};

const game = new Game();
const isValid = game.isValidMove(1, 2);

console.log(isValid);
// const game = new Game();
// game.promptMove();

class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {}
}

function A(things) {
  this.things = things;
}

A.prototype.myInstanceMethod = function () {
  console.log("hi");
};

A.myClassMethod = function () {
  //...
};

const a = new A([]);

a.myInstanceMethod();

class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {
    //...
  }
}

function A(things) {
  this.things = things;
}

A.prototype.myInstanceMethod = function () {
  console.log("hi");
};

A.myClassMethod = function () {
  //...
};

class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {
    //...
  }
}

function A(things) {
  this.things = things;
}

A.prototype.myInstanceMethod = function () {
  console.log("hi");
};

A.myClassMethod = function () {
  //..
};

class A {
  constructor(things) {
    this.things = things;
  }

  myInstanceMethod() {
    console.log("hi");
  }

  static myClassMethod() {
    //...
  }
}
