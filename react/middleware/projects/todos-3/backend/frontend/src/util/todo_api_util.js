export const fetchTodos = () => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: "/api/todos",
      success: (data) => {
        resolve(data);
      },
      error: () => {
        reject();
      },
    });
  });
};

export const createTodo = () => {};
