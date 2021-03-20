import React from "react";

class StepListItem extends React.Component {
  render() {
    return (
      <li className="step-header">
        <ul className="step-info">
          <h3>{this.props.step.title}</h3>
          <p>{this.props.step.body} </p>
        </ul>

        <div className="step-button">
          <button
            className={this.props.step.done ? "done" : "undone"}
            onClick={this.toggleStep}
          >
            {this.props.step.done ? "Undone" : "Done"}
          </button>

          <button className="delete-button" onClick={this.props.removeStep}>
            Delete
          </button>
        </div>
      </li>
    );
  }
}

export default StepListItem;
