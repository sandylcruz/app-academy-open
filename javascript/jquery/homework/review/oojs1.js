function Shape(name, sides, sideLength) {
  this.name = name;
  this.sides = sides;
  this.sideLength = sideLength;
}

Shape.prototype.calcPerimeter = function () {
  const perimeter = this.sideLength * this.sides;
  return perimeter;
};

const square = new Shape("square", 4, 5);
const result = square.calcPerimeter();
// console.log(result);

const triangle = new Shape("triangle", 3, 3);
const triangleResult = triangle.calcPerimeter();
console.log(triangleResult);
