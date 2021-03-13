import { createStore } from "redux";
import rootReducer from "../reducers/root_reducer.js";
import todosReducer from "../reducers/todos_reducer.js";

const configureStore = () => {
  const store = createStore(rootReducer);
  return store;
};

export default configureStore;
