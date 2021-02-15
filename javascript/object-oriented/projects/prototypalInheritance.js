Function.prototype.inherits = function (BaseClass) {
  function Surrogate() {}
  Surrogate.prototype = BaseClass.prototype;
  this.prototype = new Surrogate();
  this.prototype.constructor = this;
};

Function.prototype.inherits2 = function (BaseClass) {
  this.prototype = Object.create(BaseClass.prototype);
  this.prototype.constructor = this;
};

function Cat(name) {
  this.name = name;
}

Cat.prototype.meow = function () {
  console.log(this.name + " meows");
};

function Kitten(name) {
  Cat.call(this, name);
}

Kitten.inherits2(Cat);

Kitten.prototype.plays = function () {
  console.log(this.name + " plays too much");
};

const callie = new Kitten("Callie");
callie.meow();
callie.plays();
