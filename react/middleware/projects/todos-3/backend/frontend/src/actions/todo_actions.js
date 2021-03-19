export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";
export const REMOVE_TODO = "REMOVE_TODO";
export const FETCH_TODOS = "FETCH_TODOS";
import * as APIUtil from "../util/todo_api_util.js";

export const receiveTodos = (todos) => ({
  type: RECEIVE_TODOS,
  todos,
});

export const receiveTodo = (todo) => ({
  type: RECEIVE_TODO,
  todo,
});

export const removeTodo = (todo) => ({
  type: REMOVE_TODO,
  todo,
});

export const fetchTodos = () => (dispatch) =>
  APIUtil.fetchTodos().then((todos) => dispatch(receiveTodos(todos)));

// fetchTodos() returns a promise that resolve to an array todo objects
// (todos) is the return value of the fetchTodos() promise

export const createTodos = () => (dispatch) =>
  APIUtil.createTodo().then((todo) => dispatch(receiveTodo(todo)));
