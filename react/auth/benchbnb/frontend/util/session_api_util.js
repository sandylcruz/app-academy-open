export const signup = () => {
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

export const login = () => {
  return new Promise((resolve, reject) => {
    $.ajax({
      type: "POST",
      url: "/api/sessions/create",
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

export const logout = () => {
  return new Promise((resolve, reject) => {
    $.ajax({
      type: "DESTROY",
      url: `api/sessions/${id}`,
      success: () => {
        resolve();
      },
      error: () => {
        reject();
      },
    });
  });
};
