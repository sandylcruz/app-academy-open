import React from "react";
import Emoji from "./Emoji.jsx";

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
      } else {
        className += "-explored";
        const neighborBombCount = tile.adjacentBombCount();
        text = neighborBombCount > 0 ? neighborBombCount : "";
      }
    } else if (tile.flagged) {
      className += "-flagged";
    }

    return (
      <div className={className} onClick={this.handleClick}>
        {tile.bombed && tile.explored && <Emoji symbol="💣" label="bomb" />}
        {tile.flagged && <Emoji symbol="🚩" label="flag" />}
        {text}
      </div>
    );
  }
}

export default Tile;
