export const selectAllPokemon = (state) => {
  return Object.values(state.entities.pokemon);
};
// array of objects

export const selectPokemonMoveNames = (state, id) => {
  const allMoves = Object.values(state.entities.moves);
  const pokemonMoves = allMoves.filter((item) => {
    return moveBy.pokemonId === id;
  });
};

export const selectPokemonItems = (state, id) => {
  const allItems = Object.values(state.entities.items);
  const pokemonItems = allItems.filter((item) => {
    return item.pokemonId === id;
  });

  return pokemonItems;
};
