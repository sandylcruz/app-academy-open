const APIUtil = {
  followUser: (id) => {
    return new Promise((resolve) => {
      $.ajax({
        url: `/users/${id}/follow`,
        dataType: "json",
        type: "POST",
        success: () => {
          resolve();
        },
      });
    });
  },

  unfollowUser: (id) => {
    return new Promise((resolve) => {
      $.ajax({
        url: `/users/${id}/follow`,
        dataType: "json",
        type: "DELETE",
        success: () => {
          resolve();
        },
      });
    });
  },

  searchUsers: (queryVal) => {
    return new Promise((resolve) => {
      $.ajax({
        url: `/users/search?query=${queryVal}`,
        dataType: "json",
        type: "GET",
        success: (data) => {
          resolve(data);
        },
      });
    });
  },
};

module.exports = APIUtil;
