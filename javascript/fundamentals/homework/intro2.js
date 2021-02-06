// titleize

function titleize(array, callback) {
  let mapped = array.map((name) => `Mx. ${name} Jingleheimer Schmidt`);
  callback(mapped);
}
function printCallback(names) {
  names.forEach((name) => {
    console.log(name);
  });
}

// titleize(["Callie", "Squeaky"], printCallback);

//
function Cat(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Cat.prototype.trumpet = function () {
  console.log(`${this.name} goes 'meow'`);
};

Cat.prototype.grow = function () {
  this.height += 12;
  console.log(this.height);
};

Cat.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
  console.log(tricks);
};

Cat.prototype.play = function () {
  trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} likes to ${this.tricks[trickIndex]}`);
};

// callie.trumpet();
// callie.grow();
// callie.play();

let callie = new Cat("Callie", 52, ["drink", "eat"]);
let squeaky = new Cat("Squeaky", 60, ["play", "run"]);
let linus = new Cat("Linus", 22, ["be bad", "run"]);
let clowder = [callie, squeaky, linus];

// console.log(clowder);

Cat.paradeHelper = function (cat) {
  console.log(`${cat.name} is walking by`);
};
Cat.paradeHelper(callie);
