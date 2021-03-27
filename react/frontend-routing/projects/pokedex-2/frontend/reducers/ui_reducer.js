import loadingReducer from "./loading_reducer.js";

const uiReducer = () => {
  return {
    loading: loadingReducer,
  };
};

export default uiReducer;
