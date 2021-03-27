import * as APIUtil from "../util/api_util";

export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
export const RECEIVE_SINGLE_POKEMON = "RECEIVE_SINGLE_POKEMON";

export const receiveAllPokemon = (pokemon) => ({
  type: RECEIVE_ALL_POKEMON,
  pokemon,
});

export const receiveSinglePokemon = (pokemon, items, moves) => ({
  type: RECEIVE_SINGLE_POKEMON,
  pokemon,
  items,
  moves,
});

export const requestAllPokemon = () => (dispatch) =>
  APIUtil.fetchAllPokemon().then((pokemon) =>
    dispatch(receiveAllPokemon(pokemon))
  );

export const requestSinglePokemon = (id) => (dispatch) =>
  APIUtil.fetchPokemon(id).then((response) =>
    dispatch(
      receiveSinglePokemon(response.pokemon, response.items, response.moves)
    )
  );

export const createPokemon = (pokemon) => (dispatch) =>
  APIUtil.createPokemon(pokemon).then((payload) => {
    dispatch(receiveSinglePokemon(payload));
    return payload.pokemon;
  });
