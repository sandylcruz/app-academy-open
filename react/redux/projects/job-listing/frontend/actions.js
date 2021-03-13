export const selectLocation = (city, jobsArray) => {
  return {
    type: "SELECT_LOCATION",
    city: city,
    jobs: jobsArray,
  };
};
window.selectLocation = selectLocation;
