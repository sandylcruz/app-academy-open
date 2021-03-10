import React from "react";

class Tiles extends React.Component {
  constructor(props) {
    super(props);
  }

  handleClick(event) {
    const currentTile = event.target;

    // if (currentTile.bombed) {
    //   // you lose
    // } else if
  }

  render() {
    return (
      <div>
        <div className="tile"></div>
      </div>
    );
  }
}

export default Tiles;
