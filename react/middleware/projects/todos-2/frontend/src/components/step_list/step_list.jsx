import React from "react";

import StepListItem from "./step_list_item.jsx";
import StepForm from "./step_form.jsx";

class StepList extends React.Component {
  constructor(props) {
    super(props);
    this.toggleStep = this.toggleStep.bind(this);
  }

  toggleStep(event) {
    const toggledStep = Object.assign({}, this.props.step, {
      done: !this.props.step.done,
    });
    this.props.receiveStep(toggledStep);
  }

  render() {
    console.log("hi");

    return (
      <div>
        <ul className="step-list">
          {this.props.allSteps.map((step) => (
            <StepListItemContainer
              key={step.id}
              step={step}
              todo_id={todo_id}
              removeStep={this.props.removeStep}
              receiveStep={this.props.receiveStep}
            />
          ))}
        </ul>
        <StepForm todo_id={todo_id} receiveStep={this.props.receiveStep} />
      </div>
    );
  }
}

export default StepList;
