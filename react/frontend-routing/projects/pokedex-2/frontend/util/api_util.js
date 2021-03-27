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

export const createPokemon = () => {
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "POST",
      url: `api/pokemon/`,
      data: { pokemon },
      success: (data) => {
        resolve(data);
      },
      error: () => {
        reject();
      },
    });
  });
};
