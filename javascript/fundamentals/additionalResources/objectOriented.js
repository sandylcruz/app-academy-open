function Kitten(name, age) {
  this.name = name;
  this.age = age; 
}

Kitten.prototype.meow = function () {
  console.log(this.name + ' says "meow!"');
};

Kitten.prototype.purr = function () {
  console.log("Purr on");
};

let kitten = new Kitten("Earl", 2);
let kitten2 = new Kitten("Callie", 50);
// console.log(kitten.meow === kitten2.meow);
// console.log(kitten.purr());

Kitten.caboodle = [kitten, kitten2, new Kitten('Flying Merkel', 3)];
Kitten.parade = function() {
  Kitten.caboodle.forEach( kitten => {
    kitten.meow();
  });
};
Kitten.parade();