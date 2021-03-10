import React from "react";

class Tiles extends React.Component {
  constructor(props) {
    super(props);
    this.render = this.render.bind(this);
  }

  render() {
    return (
      <div>
        <h2>Hi</h2>
        console.log("hi")
        <div className="tiles">"T"</div>
      </div>
    );
  }
}

export default Tiles;
