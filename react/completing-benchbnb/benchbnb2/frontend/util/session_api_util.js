export const signup = (user) =>
  new Promise((resolve, reject) => {
    $.ajax({
      type: "POST",
      url: "/api/users",
      data: { user },
      success: (user) => {
        resolve(user);
      },
      error: () => {
        reject();
      },
    });
  });

// test in window:
//  $.ajax({
//    type: "POST",
//    url: "/api/users",
//    data: { user: { username: "squeakfreak", password: "password" } },
//    success: (user) => {
//      console.log(user);
//    },
//    error: () => {
//      console.log("fail");
//    },
//  });

export const login = (user) =>
  new Promise((resolve, reject) => {
    $.ajax({
      type: "POST",
      url: "/api/sessions",
      data: { user },
      success: (user) => {
        console.log("success");
        resolve(user);
      },
      error: () => {
        console.log("error");
        reject();
      },
    });
  });

export const logout = () =>
  new Promise((resolve, reject) => {
    $.ajax({
      type: "DELETE",
      url: `api/sessions/:id`,
      success: () => {
        resolve();
      },
      error: () => {
        reject();
      },
    });
  });
