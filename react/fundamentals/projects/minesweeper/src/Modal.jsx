import React from "react";

class Modal extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="modal-screen">
        <div className="modal-content">
          <p>{this.props.children}</p>
          <button onClick={this.props.restartGame}>Play Again</button>
        </div>
      </div>
    );
  }
}

export default Modal;
