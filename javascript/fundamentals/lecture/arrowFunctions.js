// function showEach(array) {
//   array.forEach(function(el) {
//     console.log(el);
//   });
// }

// function showEach(array) {
//   array.forEach(el => console.log(el));
// }
// console.log(showEach([1, 2, 3]))

function Cat(name) {
  this.name = name;
  this.toys = ['string', 'ball', 'balloon'];
};

Cat.prototype.play = function meow() {
  this.toys.forEach(toy => console.log(`${this.name} plays with ${toy}`));
};


const garfield = new Cat('garfield');
garfield.play();