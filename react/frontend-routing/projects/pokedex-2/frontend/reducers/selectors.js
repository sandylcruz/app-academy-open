export const selectAllPokemon = (state) => {
  return Object.values(state.entities.pokemon);
};
// array of objects
