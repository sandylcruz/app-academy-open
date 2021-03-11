// actions.js
const addOrange = {
  type: "ADD_FRUIT",
  fruit: "orange",
};

// reducer.js
const reducer = (state = [], action) => {
  switch (action.type) {
    case "ADD_FRUIT":
      return [...state, action.fruit];
    default:
      return state; //initial state
  }
};

export default reducer;

// store.js
import { createStore } from "redux";
import reducer from "./reducer.js";
import { addOrange } from "./actions.js";

const store = createStore(reducer);

store.getState(); // []
store.dispatch(addOrange);
store.getState(); // orange

//

const display = () => {
  console.log(store.getState());
};

const unsubscribeDisplay = store.subscribe(display);
store.dispatch(addOrange); // ['orange', 'orange'];

unsubscribeDisplay(); // store no longer invoked after store.dispatch()

// components/fruit_stand.jsx

import React from "react";

class FruitStand extends React.Component {
  constructor(props) {
    super(props);

    this.forceUpdate = this.forceUpdate.bind(this);
    this.unsubscribe = this.props.store.subscribe(this.forceUpdate);
  }

  render() {
    return (
      <ul>
        {this.props.store.getState().map((fruit, idx) => {
          <li key={idx}>{fruit}</li>;
        })}
      </ul>
    );
  }

  // when done with component, unsubscribe any callbacks
  componentWillUnmount() {
    this.unsubscribe();
  }
}
