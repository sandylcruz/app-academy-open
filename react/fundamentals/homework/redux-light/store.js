class Store {
  constructor(rootReducer) {
    this.state = {};
    this.rootReducer = rootReducer;
    this.getState = this.getState.bind(this);
  }

  getState() {
    return Object.assign({}, this.state);
  }

  combineReducers(previousState = null, action) {
    previousState.keys.forEach((key) => {});
    if (action) {
      const copyState = Object.assign({}, previousState);
      return copyState;
    } else {
      action.newState;
    }
  }
}
