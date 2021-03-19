import { createStore } from "redux";
import { applyMiddleware } from "redux";
import thunk from "../../middleware/thunk.js";
import rootReducer from "../reducers/root_reducer.js";

const configureStore = (preloadedState = {}) => {
  const store = createStore(
    rootReducer,
    preloadedState,
    applyMiddleware(thunk)
  );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });

  store.dispatch((dispatch) => {
    console.log("If this prints out, the thunk middleware is working!");
  });

  return store;
};

export default configureStore;
