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
    let className = "tile tile";

    if (tile.explored) {
      if (tile.bombed) {
        className += "-bombed";
        text = "\u2622";
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
      text = "U+1F6A9";
    }

    // if (tile.explored) {
    //   className += "-explored";
    // }

    return (
      <div className={className} onClick={this.handleClick}>
        {text}
      </div>
    );
  }
}

export default Tile;
