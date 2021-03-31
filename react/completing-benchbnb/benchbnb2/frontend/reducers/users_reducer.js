import { RECEIVE_CURRENT_USER } from "../actions/session_actions.js";

const usersReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      const nextState = Object.assign({}, state, {
        [action.currentUser.id]: { ...action.currentUser, isCurrentUser: true },
      });

      return nextState;
    default:
      return state;
  }
};

export default usersReducer;
