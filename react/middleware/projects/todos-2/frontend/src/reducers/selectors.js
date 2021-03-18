export const allTodos = (state) => {
  return Object.values(state.todos);
};

export const allSteps = (state) => {
  return Object.values(state.steps);
};

export const stepsByTodoId = (steps, todoId) => {
  const stepsArray = [];

  Object.keys(steps).forEach((stepId) => {
    const step = steps[stepId];
    if (step.todoId === todoId) {
      stepsArray.push(step);
    }
  });

  return stepsByTodoId;
};