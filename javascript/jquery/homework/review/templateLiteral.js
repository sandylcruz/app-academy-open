function callieSays(strings, ...values) {
  console.log(strings);
  console.log(values);
  return `${values[1]}, ${values[0]} ${strings[1]}${strings[2]}`;
  run(1);
}

let name = "Callie",
  food = "sushi";
let str = callieSays`${name} loves #{food}`;
console.log(str);

//
run(1);

if (true) {
  function run(arg) {}
}

function run(arg) {
  if (true) {
    x;
  }
}

myFunction();

const myFunction = function () {};

// class Animal
//   def initialize(name)
//     @name = animalify_name(name)
//     register_animal_name_in_database(@name)
//   end

// end

// class Cat < Animal
//   def initialize(name, color)
//     super(name)
//     @color = color
//   end
// end

// ES5

function Animal(name) {
  this.name = animalifyName(name);
  registerAnimalNameInDatabase(name);
}

function Cat(name, color) {
  Animal.call(this, name);
  this.color = color;
}

Cat.prototype = Object.create(Animal.prototype);
Cat.prototype.constructor = Cat;

// ES6

class Animal {
  constructor(name) {
    this.name = animalifyName(name);
    registerAnimalNameInDatabase(name);
  }
}

class Cat extends Animal {
  constructor(name, color) {
    super(name);
    this.color = color;
  }
}
