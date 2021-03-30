import React from "react";
import { Link } from "react-router-dom";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateUser = this.updateUser.bind(this);
    this.updateUsername = this.updateUsername.bind(this);
    this.updatePassword = this.updatePassword.bind(this);
    this.renderErrors = this.renderErrors.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  updateUser(field, value) {
    this.setState({ [field]: value });
  }

  updateUsername(event) {
    this.updateUser("username", event.currentTarget.value);
  }

  updatePassword(event) {
    this.updateUser("password", event.currentTarget.value);
  }

  renderErrors() {}

  render() {
    return (
      <div className="login-form-container">
        <form className="login-form-box" onSubmit={this.handleSubmit}>
          <p>
            Welcome to Bench Bnb. Please <Link to="/login">log in</Link>
            {" or "}
            <Link to="/signup">sign up</Link>
          </p>

          <div className="login-form">
            <label>
              Username:
              <input
                type="text"
                value={this.state.username}
                onChange={this.updateUsername}
              ></input>
            </label>

            <label>
              Password:
              <input
                type="text"
                value={this.state.password}
                onChange={this.updatePassword}
              ></input>
            </label>

            <button type="submit">Signup</button>
          </div>
        </form>
      </div>
    );
  }
}

export default SessionForm;
