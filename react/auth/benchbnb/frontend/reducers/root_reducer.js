import { combineReducers } from "Redux";
import entitiesReducer from "./entities_reducer";
import sessionErrorsReducer from "./session_errors_reducer";

const rootReducer = combineReducers({
  session: sessionErrorsReducer,
  entity: entitiesReducer,
  error: errorsReducer,
});
