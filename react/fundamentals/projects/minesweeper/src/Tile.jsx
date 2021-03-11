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
    let className = "tile tile";

    if (tile.explored) {
      if (tile.bombed) {
        className += "-bombed";
      } else if (tile.revealed) {
        className += "-explored";

        if (tile.neighbors > 0) {
          text = neighbors.count;
        }
      } else {
        className += "-explored";
      }
    } else if (tile.flagged) {
      className += "-flagged";
    }

    // if (tile.explored) {
    //   className += "-explored";
    // }

    return (
      <div className={className} onClick={this.handleClick}>
        {tile.bombed && tile.explored && <Emoji symbol="💣" label="bomb" />}
        {tile.flagged && <Emoji symbol="🚩" label="flag" />}
      </div>
    );
  }
}

export default Tile;
