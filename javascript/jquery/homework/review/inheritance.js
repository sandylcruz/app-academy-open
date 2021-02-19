function Cat(first, last, age, gender, interests) {
  this.name = {
    first,
    last,
  };
  this.age = age;
  this.gender = gender;
  this.interests = interests;
}

Cat.prototype.greeting = function () {
  return "Hi! I'm " + this.name.first + ".";
};

function Kitten(first, last, age, gender, interests, toy) {
  Cat.call(this, first, last, age, gender, interests);
  this.toy = toy;
}

Kitten.prototype.greeting = function () {
  return "Hi I'm " + this.name;
};

Kitten.prototype.myInterests = function () {
  return "I'm busy " + this.interests;
};

// let callie = new Cat("Callie", "Cat", 17, "F", "Sleeping");
// console.log(callie.greeting());

let squeaky = new Kitten(
  "Squeaky",
  "Kitten",
  4,
  "F",
  "being a mother",
  "Wand toy"
);

console.log(squeaky.interests);
console.log(squeaky.myInterests());
