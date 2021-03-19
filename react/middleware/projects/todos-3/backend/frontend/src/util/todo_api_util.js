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

export const createTodo = (todo) => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "POST",
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
