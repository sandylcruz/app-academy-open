import React from "react";
import Tiles from "./tiles";

class Board extends React.Component {
  constructor(props) {
    super(props);
    this.render = this.render.bind(this);
    this.renderRows = this.renderRows.bind(this);
    this.renderTiles = this.renderTiles.bind(this);
  }

  renderRows() {
    const board = this.props.board;

    return board.grid.map((row, index) => {
      return (
        <div className="row" key="index">
          {this.renderTiles(row, index)}
        </div>
      );
    });
  }

  renderTiles(row, index) {
    const board = this.props.board;
    return row.map((tile, index) => {
      return (
        <div className="tile" key="{row{index}}">
          Tile
        </div>
      );
    });
  }

  render() {
    const board = this.props.board;

    return <div className="board">{this.renderRows()}</div>;
  }
}

export default Board;
