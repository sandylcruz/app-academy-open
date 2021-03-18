import React from "react";

class StepListItem extends React.Component {
  render() {
    return (
      <div className="step-info">
        <ul className="step-list">
          <h3>Step title: {this.props.step.title}</h3>

          <h3>Step description:{this.props.step.body} </h3>

          <button
            className={this.props.step.done ? "done" : "undone"}
            onClick={this.toggleStep}
          >
            {this.props.step.done ? "Done" : "Undone"}
          </button>
        </ul>
      </div>
    );
  }
}

export default StepListItem;
