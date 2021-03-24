export const selectAllPokemon = (state) => {
  console.log(state.entities.pokemon);
  return Object.values(state.entities.pokemon);
};
