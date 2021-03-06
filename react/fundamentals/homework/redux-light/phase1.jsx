class Store {
  constructor(rootReducer) {
    this.state = {};
    this.rootReducer = rootReducer;
    this.getState = this.getState.bind(this);
  }

  getState() {
    return Object.assign({}, this.state);
  }
}
