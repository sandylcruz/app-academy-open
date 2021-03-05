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

const myNoiseReducer = (prevState = "peace and quiet", action) => {
  switch (action.type) {
    case "noisy action":
      return action.noise;
    default:
      return prevState;
  }
};

const myNoisyAction = {
  type: "noisy action",
  noise: "Car alarm",
};

const myInconsequentialAction = {
  type: "a type no one cares about",
  data: {
    thisThing: "will not get used anyway",
  },
};

const myInitialState = {
  noise: "peace and quiet",
};

const myRootReducer = combineReducers({
  noise: myNoiseReducer,
});

let newState = myRootReducer(myInitialState, myInconsequentialAction);
// => { noise: "peace and quiet" }
console.log(newState);

newState = myRootReducer(newState, myNoisyAction);
// => { noise: "Car alarm" }
console.log(newState);

newState = myRootReducer(newState, myInconsequentialAction);
console.log(newState);

// const state = {
//   users: [],
// };

// const addUser = (name, age) => ({
//   type: "ADD_USER",
//   data: {
//     name,
//     age,
//   },
// });

// const usersReducer = (previousState, action) => {
//   if (action.type === "ADD_USER") {
//     const newUser = action.data;
//     const nextUsers = [...previousState, newUser];
//     return nextUsers;
//   } else {
//     return previousState;
//   }
// };

// const store = new Store({
//   users: usersReducer,
// });

// store.dispatch(addUser("Callie", 17));
