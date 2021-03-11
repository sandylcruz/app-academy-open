import React from "react";

class Tile extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
    console.log("hi");
  }

  handleClick(event) {
    const tile = this.props.tile;
    console.log(event);
    const altKeyPress = event.altKey;
    this.props.updateGame(tile, altKeyPress);
  }

  render() {
    return (
      <div
        className="tile"
        onClick={this.handleClick}
        bombed={this.props.tile.bombed}
        revealed={this.props.tile.revealed}
        flagged={this.props.tile.flagged}
      ></div>
    );
  }
}

export default Tile;
