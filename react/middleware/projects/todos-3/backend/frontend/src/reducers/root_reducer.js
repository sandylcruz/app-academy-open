import { combineReducers } from "redux";
import todosReducer from "./todos_reducer.js";
import stepsReducer from "./steps_reducer.js";
import errorsReducer from "./errors_reducer.js";

const rootReducer = combineReducers({
  todos: todosReducer,
  steps: stepsReducer,
  errors: errorsReducer, // points to array of strings that can be empty
});

export default rootReducer;
