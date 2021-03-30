import { combineReducers } from "redux";
import entitiesReducer from "./entities_reducer";
import sessionErrorsReducer from "./session_errors_reducer";
import errorsReducer from "./errors_reducer.js";

const rootReducer = combineReducers({
  session: sessionErrorsReducer,
  entity: entitiesReducer,
  error: errorsReducer,
});

export default rootReducer;
