function Board() {
  this.grid = [ [], [], [], [], [], [], [], [], [] ]
}

Board.displayBoard(board) {

}
Board.prototype.rows() {

}

Board.prototype.cols() {
  
}

Board.prototype.diagonals() {
  const downDiagonals = [[0, 0], [1, 1], [2, 2]];
  const upDiagonals = [[0, 2], [1, 1], [2, 0]]
  
}

Board.prototype.empty(position) {
  this[position].length === 0
}

Board.prototype.validMove(position, mark) {
  if (position[0] >= 0 && position[0] <= 2) {
    return true
  } else if (position[1] >= 0 && position[1] <= 2) {
    return true
  } else {
    return false
  }
}

Board.prototype.place_mark(position, mark) {
  if (this.grid.empty?(position)) {
    this.board[position] = mark;
    return true
  } else {
    return false
  }
}

Board.prototype.full() {

}

Board.prototype.won() {

}

Board.prototype.draw() {
  if (!this.won && this.full) {
    return true
  } elsif !this.full && !this.won {
    return false
  } else {
    return true
  }
}

Board.prototype.winner() {
  if (this.won) {
    console.log("winner")
  }
}



