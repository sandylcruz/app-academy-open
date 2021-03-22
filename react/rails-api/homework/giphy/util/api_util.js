export const fetchSearchGiphys = (searchTerm) => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=${GIPHY_API_KEY}&limit=2`,
      success: (response) => {
        resolve(response.data);
      },
      error: () => {
        reject("There was a problem getting your gif");
      },
    });
  });
};
