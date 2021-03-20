import React from "react";
// Components
import StepListItemContainer from "./step_list_item_container";
import StepForm from "./step_form";

const StepList = ({ steps, todo_id, receiveStep, createStep, deleteStep }) => {
  const stepItems = steps.map((step) => (
    <StepListItemContainer key={step.id} step={step} deleteStep={deleteStep} />
  ));

  return (
    <div>
      <ul className="step-list">{stepItems}</ul>
      <StepForm
        todo_id={todo_id}
        receiveStep={receiveStep}
        createStep={createStep}
      />
    </div>
  );
};

export default StepList;
