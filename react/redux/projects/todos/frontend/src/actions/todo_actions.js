export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";
export const REMOVE_TODO = "REMOVE_TODO";

export const receiveTodos = (todos) => ({
  type: RECEIVE_TODOS,
  todos,
});
window.receiveTodo = receiveTodo;

export const receiveTodo = (todo) => ({
  type: RECEIVE_TODO,
  todo,
});
window.receiveTodos = receiveTodos;

export const removeTodo = (todo) => ({
  type: REMOVE_TODO,
  todo,
});
window.removeTodo = removeTodo;
