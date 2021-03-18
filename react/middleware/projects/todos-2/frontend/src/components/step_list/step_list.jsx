import React from "react";

import StepListItem from "./step_list_item.jsx";
import StepForm from "./step_form.jsx";

class StepList extends React.Component {
  render() {
    return (
      <ul className="step-container">
        <StepForm receiveStep={this.props.receiveStep} />
        <ul className="step-list"></ul>
        {this.props.allSteps.map((step) => (
          <StepListItem
            key={step.id}
            todo={step}
            removeStep={this.props.removeStep}
            receiveStep={this.props.receiveStep}
          />
        ))}
      </ul>
    );
  }
}

export default StepList;
