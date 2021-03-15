import {
  RECEIVE_TODOS,
  RECEIVE_TODO,
  REMOVE_TODO,
} from "../actions/todo_actions.js";

const initialState = {
  1: {
    id: 1,
    title: "Wash Callie",
    body: "with soap",
    done: false,
  },

  2: {
    id: 2,
    title: "Give Linus a bath",
    body: "wit h shampoo",
    done: true,
  },
};

const todosReducer = (state = initialState, action) => {
  Object.freeze(state);
  let nextState = {};

  switch (action.type) {
    case RECEIVE_TODOS:
      action.todos.forEach((todo) => {
        nextState[todo.id] = todo;
      });
      return nextState;

    case RECEIVE_TODO:
      const newToDo = { [action.todo.id]: action.todo };
      return Object.assign({}, state, newToDo);

    case REMOVE_TODO:
      const todoToDelete = action.todo;
      Object.keys(state).forEach((key) => {
        const currentTodo = state[key];

        if (todoToDelete.id !== currentTodo.id) {
          nextState[key] = currentTodo;
        }
      });

      return nextState;

    default:
      return state;
  }
};

export default todosReducer;
