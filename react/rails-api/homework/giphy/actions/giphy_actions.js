import * as APIUtil from "../util/api_util";

export const receiveSearchGiphys = (giphys) => {
  return {
    type: RECEIVE_SEARCH_GIPHYS,
    giphys,
  };
};
