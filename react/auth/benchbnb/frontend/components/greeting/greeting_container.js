import { connect } from "react-redux";
import { logout } from "../../actions/session_actions.js";
import Greeting from "./greeting.jsx";

const mapStateToProps = (state) => {
  return {
    currentUser: "",
  };
};

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
});

export default connect(mapStateToProps, mapDispatchToProps)(Greeting);
