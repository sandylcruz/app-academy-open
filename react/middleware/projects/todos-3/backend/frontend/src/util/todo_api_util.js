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
      data: {
        todo,
      },

      success: (data) => {
        console.log(data);
        resolve(data);
      },
      error: () => {
        reject("something went wrong");
      },
    });
  });
};

export const updateTodo = (todo) => {
  return new Promise((resolve, reject) => {
    $ajax({
      method: "PATCH",
      url: "api/todos/{todo.id}",
      success: (data) => {
        receiveTodo;
      },
      error: () => {
        receiveError;
      },
    });
  });
};
