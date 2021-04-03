import { combineReducers } from "redux";
import entitiesReducer from "./entities_reducer";
import sessionReducer from "./session_reducer";
import errorsReducer from "./errors_reducer.js";
import filtersReducer from "./filters_reducer.js";

const rootReducer = combineReducers({
  entities: entitiesReducer,
  errors: errorsReducer,
  filters: filtersReducer,
  session: sessionReducer,
});

export default rootReducer;
