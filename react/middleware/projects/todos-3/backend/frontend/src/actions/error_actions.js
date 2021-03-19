export const RECEIVE_ERROR = "RECEIVE_ERROR";
export const CLEAR_ERRORS = "CLEAR_ERRORS";

export const receiveError = (errors) => {
  type: RECEIVE_ERROR, errors;
};

export const clearErrors = (errors) => {
  type: CLEAR_ERRORS, errors;
};
