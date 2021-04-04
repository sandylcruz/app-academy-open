export const fetchBenches = (filters) => {
  const { bounds } = filters;
  const boundsParameters = `bounds[southWest][lat]=${bounds.southWest.lat}&bounds[southWest][lng]=${bounds.southWest.lng}&bounds[northEast][lat]=${bounds.northEast.lat}&bounds[northEast][lng]=${bounds.northEast.lng}`;
  return new Promise((resolve, reject) => {
    $.ajax({
      method: "GET",
      url: `/api/benches?${boundsParameters}`,
      success: resolve,
      error: reject,
    });
  });
};
