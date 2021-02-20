// ./cat.js
class Cat {
  meow() {}
}
module.exports = Cat;

// ./dog.js
class Dog {
  bark() {}
}

module.exports = Dog;

// ./animals.js
const Cat = require("./cat");
const Dog = require("./dog");

const cat = new Cat();
const dog = new Dog();

cat.meow();
dog.bark();

// Loading multiple classes

// ./pawn
class Pawn {}

// ./knight
class Knight {}

// ./bishop
class Bishop {}

// ./pieces/index.js
module.exports = {
  Pawn: require("./pawn"),
  Knight: require("./knight"),
  Bishop: require("./bishop"),
};

// chess-board.js

const Pieces = require("./pieces");

const p = new Pieces.Pawn();
const k = new Pieces.Knight();
const b = new Pieces.Bishop();
