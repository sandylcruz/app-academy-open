import React from "react";

import StepListItem from "./step_list_item.jsx";
import StepForm from "./step_form.jsx";

class StepList extends React.Component {
  render() {
    <ul className="step-container">
      <StepForm receiveTodo={this.props.receiveTodo} />
      <ul className="step-list"></ul>
    </ul>;
  }
}

export default StepList;
