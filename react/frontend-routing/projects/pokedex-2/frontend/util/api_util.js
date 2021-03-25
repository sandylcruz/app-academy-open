export const fetchAllPokemon = () => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: "/api/pokemon",
      success: (data) => {
        resolve(data);
      },
      error: () => {
        reject();
      },
    });
  });
};

export const fetchPokemon = (id) => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: `api/pokemon/${id}`,
      success: (data) => {
        resolve(data);
      },
      error: () => {
        reject();
      },
    });
  });
};
