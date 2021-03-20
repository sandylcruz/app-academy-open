export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";
export const REMOVE_TODO = "REMOVE_TODO";
export const FETCH_TODOS = "FETCH_TODOS";
import { receiveError } from "./error_actions.js";
import * as APIUtil from "../util/todo_api_util.js";

// sync actions
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

export const todoError = (error) => ({
  type: TODO_ERROR,
  error,
});

// async
export const fetchTodos = () => (dispatch) =>
  APIUtil.fetchTodos().then((todos) => dispatch(receiveTodos(todos)));

// fetchTodos() returns a promise that resolve to an array todo objects
// (todos) is the return value of the fetchTodos() promise

export const createTodo = (todo) => (dispatch) =>
  APIUtil.createTodo(todo).then(
    (todo) => dispatch(receiveTodo(todo)),
    (error) => dispatch(receiveError(error))
  );

export const updateTodo = (todo) => (dispatch) => {
  APIUtil.updateTodo(todo).then((todo) => dispatch(receiveTodo(todo)));
};
