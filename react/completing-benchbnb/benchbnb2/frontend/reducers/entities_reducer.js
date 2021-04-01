import { combineReducers } from "redux";

import benchesReducer from "./benches_reducer.js";
import usersReducer from "./users_reducer.js";

const entitiesReducer = combineReducers({
  benches: benchesReducer,
  users: usersReducer,
});

export default entitiesReducer;
