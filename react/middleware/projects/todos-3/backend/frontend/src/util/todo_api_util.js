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

export const createTodo = (todo, tags) => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "POST",
      url: "/api/todos",
      data: {
        todo: {
          title: todo.title,
          body: todo.body,
          done: todo.done,
          tag_names: tags,
        },
      },

      success: (data) => {
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
    $.ajax({
      method: "PATCH",
      url: "api/todos/{todo.id}",
      data: {
        todo,
      },

      success: (data) => {
        resolve(data);
      },
      error: () => {
        reject("something went wrong");
      },
    });
  });
};

export const deleteTodo = (todo) => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "DELETE",
      url: `api/todos/${todo.id}`,

      success: (data) => {
        resolve(data);
      },
      error: () => {
        "something went wrong";
      },
    });
  });
};
