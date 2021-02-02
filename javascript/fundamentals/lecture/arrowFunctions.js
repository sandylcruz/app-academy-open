function showEach(array) {
  array.forEach(function(el) {
    console.log(el);
  });
}

function showEach(array) {
  array.forEach(el => console.log(el));
}
console.log(showEach([1, 2, 3]))

function Cat(name) {
  this.name = name;
  this.toys = ['string', 'ball', 'balloon'];
};

Cat.prototype.play = function meow() {
  this.toys.forEach(toy => console.log(`${this.name} plays with ${toy}`));
};


const garfield = new Cat('garfield');
garfield.play();

const halfMyAge = myAge => myAge / 2;

const halfMyAge = myAge => {
  const age = myAge;
  return age / 2;
};
console.log(halfMyAge(30) === 15);

const sayHello = name => console.log(`Hi, ${name}!`);
console.log(sayHello)