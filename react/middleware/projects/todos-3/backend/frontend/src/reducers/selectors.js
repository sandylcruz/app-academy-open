export const allTodos = ({ todos }) =>
  Object.keys(todos).map((id) => todos[id]); // array of todo objects

export const stepsByTodoId = ({ steps }, todo_id) => {
  const stepsByTodoId = [];
  Object.keys(steps).forEach((stepId) => {
    const step = steps[stepId];
    if (steps[stepId].todo_id === todo_id) stepsByTodoId.push(step);
  });
  return stepsByTodoId;
};

export const allErrors = ({ errors }) => errors;
