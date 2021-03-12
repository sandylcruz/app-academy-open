// action creator

const addOrange = {
  type: "ADD_FRUIT",
  fruit: "orange",
};

StorageEvent.dispatch(addOrange);
StorageEvent.getState(); // ['orange']

// to initiate dispatch, pass result of calling
// action creator to store.dipatch()

const addFruit = (fruit) => ({
  type: "ADD_FRUIT",
  fruit,
});
store.dispatch(addFruit("Apple"));
store.dispatch(addFruit("Strawberry"));
store.dispatch(addFruit("Lychee"));
store.getState(); // ['orange', 'apple', 'strawberry', 'lychee]

// Create constants for all fruit action types
export const ADD_FRUIT = "ADD_FRUIT";
export const ADD_FRUITS = "ADD_FRUITS";
export const SELL_FRUIT = "SELL_FRUIT";

export const addFruit = (fruit) => ({
  type: ADD_FRUIT,
  fruit,
});

export const addFruits = (fruits) => ({
  type: ADD_FRUITS,
  fruits,
});

export const sellFruit = (fruit) => ({
  type: SELL_FRUIT,
  fruit,
});
/* By creating constants for string literals, we
    ensure that we will get a error thrown were
    we to write ADD_FRUIT */
