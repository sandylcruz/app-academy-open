// import {
//   RECEIVE_STEPS,
//   RECEIVE_STEP,
//   REMOVE_STEP,
// } from "../actions/step_actions.js";

// const initialState = {
//   1: {
//     id: 1,
//     title: "Pick up callie carefully",
//     description: "With ovegloves",
//     done: false,
//     todo_id: 1,
//   },

//   2: {
//     id: 2,
//     title: "Get extra shampoo",
//     description: "Might need callie's help",
//     done: false,
//     todo_id: 2,
//   },
// };

// const stepsReducer = (state = initialState, action) => {
//   let nextState = Object.assign({}, state);
//   Object.freeze(state);

//   switch (action.type) {
//     case RECEIVE_STEPS:
//       action.steps.forEach((step) => {
//         nextState[step.id] = step;
//       });
//       return nextState;

//     case RECEIVE_STEP:
//       const newStep = { [action.step.id]: action.step };
//       return Object.assign({}, state, newStep);

//     case REMOVE_STEP:
//       const stepToDelete = action.step;
//       Object.keys(state).forEach((key) => {
//         const currentStep = state[key];
//         if (currentStep.id !== stepToDelete.id) {
//           nextState[key] = currentStep;
//         }
//       });

//       return nextState;
//     default:
//       return state;
//   }
// };

// export default stepsReducer;

import {
  RECEIVE_STEPS,
  RECEIVE_STEP,
  REMOVE_STEP,
} from "../actions/step_actions";

const stepsReducer = (state = {}, action) => {
  let nextState;
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_STEPS:
      nextState = Object.assign({}, state);
      action.steps.forEach((step) => (nextState[step.id] = step));
      return nextState;
    case RECEIVE_STEP:
      return Object.assign({}, state, { [action.step.id]: action.step });
    case REMOVE_STEP:
      nextState = Object.assign({}, state);
      delete nextState[action.step.id];
      return nextState;
    default:
      return state;
  }
};

export default stepsReducer;
