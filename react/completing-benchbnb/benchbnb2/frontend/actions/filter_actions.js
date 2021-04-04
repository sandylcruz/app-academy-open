import { fetchBenches } from "./bench_actions.js";

export const UPDATE_BOUNDS = "UPDATE_BOUNDS";

export const updateBounds = (bounds) => ({
  type: UPDATE_BOUNDS,
  bounds,
});

export const updateBoundsAndFetchBenches = (bounds) => (dispatch, getState) => {
  dispatch(updateBounds(bounds));
  const filters = getState().filters;
  return fetchBenches(filters)(dispatch);
};
