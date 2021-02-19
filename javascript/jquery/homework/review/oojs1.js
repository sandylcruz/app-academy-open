function Shape(name, sides, sideLength) {
  this.name = name;
  this.sides = sides;
  this.sideLength = sideLength;
}

Shape.prototype.calcPerimeter = function (sides, sideLength) {
  const perimeter = sideLength * sides;
  console.log(sideLength, sides);
  // return perimeter;
};

const square = new Shape("square", 4, 5);
console.log(square.calcPerimeter());
