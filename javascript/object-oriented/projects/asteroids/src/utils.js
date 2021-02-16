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

function dist(pos1, pos2) {
  return Math.sqrt(
    Math.pow(pos1[0] - pos2[0], 2) + Math.pow(pos1[1] - pos2[1], 2)
  );
}

module.exports = {
  dist: dist,
  inherits: inherits,
  randomVec: randomVec,
  scale: scale,
};
