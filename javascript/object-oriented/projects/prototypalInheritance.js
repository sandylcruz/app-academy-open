Function.prototype.inherits = function (BaseClass) {
  function Surrogate() {}
  Surrogate.prototype = BaseClass.prototype;
  this.prototype = new Surrogate();
  this.prototype.constructor = this;
};

Function.prototype.inherits2 = function (BaseClass) {
  this.prototype = Object.create(new BaseClass.prototype());
  this.prototype.constructor = this;
};

function MovingObject() {}
function Ship() {}
Ship.inherits(MovingObject);
