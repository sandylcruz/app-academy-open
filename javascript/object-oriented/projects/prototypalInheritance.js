
Function.prototype.inherits () {
  function Surrogate() {}
  Surrogate.prototype = BaseClass.prototype;
  this.prototype = new Surrogate();
  this.prototype.constructor = this;  
}

function MovingObject() {}
function Ship () {}
Ship.inherits(MovingObject);
