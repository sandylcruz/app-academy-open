import { connect } from "react-redux";
import { createNewUser, createUser } from "../../actions/session.js";
import Signup from "./signup.jsx";

const mapDispatchToProps = (dispatch) => ({
  createNewUser: (formUser) => dispatch(createNewUser(formUser)),
});

export default connect(null, mapDispatchToProps)(Signup);
