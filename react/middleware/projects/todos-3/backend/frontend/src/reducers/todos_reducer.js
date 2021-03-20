import {
  RECEIVE_TODOS,
  RECEIVE_TODO,
  REMOVE_TODO,
} from "../actions/todo_actions.js";

const todosReducer = (state = {}, action) => {
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
