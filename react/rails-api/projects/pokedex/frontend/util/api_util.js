export const fetchAllPokemon = () => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: "api/pokemon/",
      success: (data) => {
        resolve(data);
      },
      error: () => {
        reject("Failed to fetch pokemon");
      },
    });
  });
};
