import { connect } from "react-redux";
import { logout } from "../../actions/session_actions.js";
import Greeting from "./greeting.jsx";

const selectCurrentUser = (state) => {
  const currentUserId = Object.keys(state.entities.users).find((key) => {
    const user = state.entities.users[key];

    return user.isCurrentUser;
  });

  if (!currentUserId) {
    return null;
  }

  return state.entities.users[currentUserId];
};

const mapStateToProps = (state) => {
  return {
    currentUser: selectCurrentUser(state),
  };
};

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
});

export default connect(mapStateToProps, mapDispatchToProps)(Greeting);
