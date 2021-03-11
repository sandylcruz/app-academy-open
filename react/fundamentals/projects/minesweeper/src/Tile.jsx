import React from "react";

class Tile extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
    const tile = this.props.tile;
    const altKeyPress = event.altKey;
    this.props.updateGame(tile, altKeyPress);
  }

  render() {
    const tile = this.props.tile;
    let text = "";
    let className = "tile";

    if (tile.explored) {
      if (tile.bombed) {
        className += "-bombed";
        text = "💣";
      } else if (tile.revealed) {
        className += "-explored";

        if (tile.neighbors > 0) {
          text = neighbors.count;
        }
      }
    } else if (tile.flagged) {
      className += "-flagged";
      text = "🚩";
    }

    if (tile.explored) {
      className += "-explored";
    }

    return <div className={className} onClick={this.handleClick}></div>;
  }
}

export default Tile;
