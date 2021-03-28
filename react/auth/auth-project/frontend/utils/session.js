export const postUser = (user) => {
  return new Promise((resolve, reject) => {
    $.ajax({
      url: "/api/users",
      method: "POST",
      data: { user },
      success: (user) => {
        resolve(user);
      },
      error: () => {
        reject();
      },
    });
  });
};

export const postSession = (user) => {
  $.ajax({
    url: "/api/session",
    method: "POST",
    data: { user },
  });
};

export const deleteSession = () => {
  $.ajax({
    url: "/api/session",
    method: "DELETE",
  });
};
