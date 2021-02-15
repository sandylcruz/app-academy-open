function inherits(childClass, parentClass) {
  function Surrogate() {}
  Surrogate.prototype = parentClass.prototype;
  childClass.prototype = new Surrogate();
  childClass.prototype.constructor = childClass;
}

function randomVec(length) {
  const deg = 2 * Math.PI * Math.random();
  return scale([Math.sin(deg), Math.cos(deg)], length);
}

function scale(vec, m) {
  return [vec[0] * m, vec[1] * m];
}

module.exports = {
  inherits: inherits,
  randomVec: randomVec,
  scale: scale,
};
