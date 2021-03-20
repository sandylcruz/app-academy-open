export const fetchSteps = (todoId) => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: `/api/todos/${todoId}/steps`,
      success: (data) => {
        resolve(data);
      },

      error: () => {
        reject();
      },
    });
  });
};

export const createStep = (step) =>
  new Promise((resolve, reject) => {
    $.ajax({
      method: "POST",
      url: "/api/steps",
      data: { step },
      success: (data) => {
        resolve(data);
      },
      error: () => {
        reject("Failed to make step");
      },
    });
  });

export const deleteStep = (step) =>
  new Promise((resolve, reject) => {
    $.ajax({
      method: "DELETE",
      url: `/api/steps/${step.id}`,
      success: () => {
        resolve();
      },
      error: () => {
        reject("Did not delete");
      },
    });
  });
