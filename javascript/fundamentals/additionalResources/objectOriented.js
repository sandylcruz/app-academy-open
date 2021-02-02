function Kitten(name, age) {
  this.name = name;
  this.age = age; 
}

Kitten.prototype.meow = function () {
  console.log(this.name + ' says "meow!"');
};

let kitten = new Kitten("Earl", 2);
let kitten2 = new Kitten("Callie", 50);
console.log(kitten.meow === kitten2.meow);