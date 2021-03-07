class Store {
  constructor(rootReducer) {
    this.state = {};
    this.rootReducer = rootReducer;
    this.getState = this.getState.bind(this);
  }

  getState() {
    return Object.assign({}, this.state);
  }

  dispatch() {}
}

const combineReducers = (reducersObject) => {
  return (previousState, action) => {
    const nextState = {};

    Object.keys(previousState).forEach((key) => {
      const oldValue = previousState[key];
      const reducer = reducersObject[key];

      const nextSpecificState = reducer(oldValue, action);

      if (oldValue !== nextSpecificState) {
        nextState[key] = nextSpecificState;
      }
    });

    const isStateUntouched = Object.keys(nextState).length === 0;

    if (isStateUntouched) {
      return previousState;
    } else {
      return {
        ...previousState,
        ...nextState,
      };
    }
  };
};
