export const signup = (user) => {
  return new Promise((resolve, reject) => {
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
};

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

export const login = (user) => {
  return new Promise((resolve, reject) => {
    console.log("before ajax");
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
};

export const logout = () => {
  return new Promise((resolve, reject) => {
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
};
