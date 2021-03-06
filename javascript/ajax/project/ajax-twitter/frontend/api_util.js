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

  createTweet: (data) => {
    return new Promise((resolve) => {
      $.ajax({
        url: "/tweets",
        dataType: "json",
        type: "POST",
        data: data,
        success: (data) => {
          resolve(data);
        },
      });
    });
  },

  getTweets: (maxCreatedAt) => {
    return new Promise((resolve) => {
      const options = {
        url: "/feed",
        dataType: "json",
        type: "GET",
        success: (data) => {
          resolve(data);
        },
      };
      if (maxCreatedAt) {
        options.data = {
          max_created_at: maxCreatedAt,
        };
      }
      $.ajax(options);
    });
  },
};

module.exports = APIUtil;
