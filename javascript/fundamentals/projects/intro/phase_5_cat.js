function Cat(name, owner) {
  this.name = name;
  this.owner = owner;
}

Cat.prototype.cuteStatement = function () {
  return `${this.owner} loves ${this.name}`;
};

let callie = new Cat("Callie", "Louis");
let squeaky = new Cat("Squeaky", "Linus");
let linus = new Cat("Linus", "Grandma");

console.log(callie.cuteStatement());
console.log(squeaky.cuteStatement());
console.log(linus.cuteStatement());

Cat.prototype.cuteStatement = function () {
  return `Everyone loves ${this.name}`;
};

console.log(callie.cuteStatement());
console.log(squeaky.cuteStatement());
console.log(linus.cuteStatement());
