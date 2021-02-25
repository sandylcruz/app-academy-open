class Coord {
  constructor(i, j) {
    this.i = i;
    this.j = j;
  }

  equals(coordinate2) {
    return this.i === coordinate2.i && this.j === coordinate2.j;
  }

  isValid(dimension) {
    return (
      this.i >= 0 && this.i < dimension && this.j >= 0 && this.j < dimension
    );
  }

  plus(coordinate2) {
    const i = this.i + coordinate2.i;
    const j = this.j + coordinate2.j;

    return new Coord(i, j);
  }
}

module.exports = Coord;
