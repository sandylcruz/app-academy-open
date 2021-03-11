import React from "react";
import Tile from "./Tile";
import Game from "./Game";

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
        <div className="row" key={`row-${index}`}>
          {this.renderTiles(row, index)}
        </div>
      );
    });
  }

  renderTiles(row, index) {
    console.log(row);
    return row.map((tile, index) => {
      return <Tile tile={tile} updateGame={this.props.updateGame} />;
      // return (
      //   <div
      //     className="tile"
      //     key={`tile-${index}`}
      //     updategame={this.props.updateGame()}
      //   ></div>
      // );
    });
  }

  render() {
    return <div className="board">{this.renderRows()}</div>;
  }
}

export default Board;
