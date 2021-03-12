// reducer.js //
const reducer = (state = [], action) => {
  // upon initialization, calls reducer with undefined state
  // reducer dictates store's initial state via default
  switch (action.type) {
    case "ADD_FRUIT":
      return [...state, action.fruit];
    // create and return new object representing next state
    // after processing action
    // returns state unchanged
    default:
      return state; //initial state
  }
};
//
const fruitReducer = (state = [], action) => {
  switch (action.type) {
    case "ADD_FRUIT":
      return [...state, action.fruit];
    case "ADD_FRUITS":
      return [...state, ...action.fruits];
    case "SELL_FRUIT":
      const idx = state.indexOf(action.fruit);
      if (idx !== -1) {
        // remove first instance of action.fruit
        return [...state.alice(i, idx), ...state.slice(idx + 1)];
      }
      return state; // if not in state, return previous state
    case "SELL_OUT":
      return [];
    default:
      return state;
  }
};

// good reducer // 

const goodReducer = (state = { count: 0 }, action) => {
  Object.freeze(state);
  // ensures state isn't accidentally mutated
  switch (action.type) {
    case "INCREMENT_COUNTER":
      let nextState = Object.assign({}, state);
      nextState.count++;
      return nextState;
    default:
      return state;
  }
};

// Combined Reducers // 

// Reducer #1: fruitsReducer
const fruitsReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case "ADD_FRUIT":
      return [...state, action.fruit];
    case "ADD_FRUITS":
      return [...state, action.fruits];
    case "SELL_FRUIT":
      const idx = state.indexOf(action.fruit);
      if (idx !== -1) {
        return [...state.slice(0, idx), ...state.slice(idx + 1)];
      }
      return state;
    case "SELL_OUT":
      return [];
    default:
      return state;
  }
};
export default fruitsReducer;

// Reducer #2: farmersReducer

const farmersReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);
  switch (action.type) {
    case "HIRE_FARMER":
      // shallow dup previous state
      const farmer = {
        // create new farmer object
        id: action.id,
        name: action.name,
        paid: false,
      };
      nextState[action.id] = farmer; // add new farmer to state
      return nextState;
    case "PAY_FARMER":
      let farmer = nextState[action.id];
      farmer.paid = !farmer.paid;
      return nextState;
    default
      return state;
  }
};
export default farmersReducer

// Combined reducers // 
import { combineReducers } from "redux";
import fruitsReducer from "./fruits_reducer";
import farmersReducer from "./farmers_reducer";

const rootReducer = combineReducers({
  fruits: fruitsReducer,
  farmers: farmersReducer
})

export default rootReducer
// store/store.js
import { createStore } from "redux";
import rootReducer from "./reducers/root_reducer.js";

const store = createStore(rootReducer);

store.getState() // { fruits: [], farmers: {} }
// initial state

// Delegating to Reducers // 
// Delegate reducer functions to subordinate reducers
// "Farmers" reducer delgates to "Farmer" when single farmer's
// attributes need to be modified (if paid)

const farmerReducer = (state, action) => {
  Object.freeze(state);
  switch (action.type) {
    case "HIRE_FARMER":
      return {
        id: action.id,
        name: action.name,
        paid: false
      };
    case "PAY_FARMER":
      return Object.assign({}, state {
        paid: !state.paid
      });
    default:
      return state;
  }
}

const farmersReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);
  switch (action.type) {
    case "HIRE_FARMER":
      nextState[action.id] = farmerReducer(undefined, action);
      return nextState;
    case "PAY_FARMER":
      nextState[action.id] = farmerReducer(nextState[action.id], action);
      return nextState;
    default:
      return state;
  }
}