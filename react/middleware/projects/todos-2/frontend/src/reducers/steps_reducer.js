import {
  RECEIVE_STEPS,
  RECEIVE_STEP,
  REMOVE_STEP,
} from "../actions/steps_actions.js";

const stepsReducer = (state = {}, action) => {
  let nextState = Object.assign({}, state);
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_STEPS:
      action.steps.forEach((step) => {
        nextState[step.id] = step;
      });
      return nextState;

    case RECEIVE_STEP:
      const newStep = { [action.step.id]: action.step };
      return Object.assign({}, state, newStep);

    case REMOVE_STEP:
      const stepToDelete = action.step;
      Object.keys(state).forEach((key) => {
        const currentStep = state[key];
        if (currentStep.id !== stepToDelete.id) {
          nextState[key] = currentStep;
        }
      });

      return nextState;
    default:
      return state;
  }
};

export default stepsReducer;

const newTodos = [
  { id: 1, title: "Learn Redux", body: "It is fundamental", done: false },
  { id: 2, title: "Learn js", body: "Also essential", done: false },
];

const newSteps = [
  { id: 1, title: "Dispatch actions", done: false, todo_id: 1 },
  { id: 2, title: "Reload", done: false, todo_id: 2 },
];
