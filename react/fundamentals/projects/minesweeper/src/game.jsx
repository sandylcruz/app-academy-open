import React from "react";

class Game extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      board: new Minesweeper.Board(),
    };

    this.render = this.render.bind(this);
    this.updateGame = this.updateGame.bind(this);
  }

  updateGame() {}

  render() {
    return <h1>Hi {this.props.name}</h1>;
  }
}

export default Game;
