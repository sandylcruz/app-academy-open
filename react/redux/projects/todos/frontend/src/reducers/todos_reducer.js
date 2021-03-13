const initialState = {
  1: {
    id: 1,
    title: "wash car",
    body: "with soap",
    done: false,
  },

  2: {
    id: 2,
    title: "wash dog",
    body: "wish shampoo",
    done: true,
  },
};

const todosReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    default:
      return initialState;
  }
};

export default todosReducer;
