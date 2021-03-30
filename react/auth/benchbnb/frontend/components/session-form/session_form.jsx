import React from "react";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: "",
    };
  }

  handleSubmit(event) {
    event.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  render() {
    return (
      <div>
        <form className="sign-in" onSubmit={this.handleSubmit}>
          <label>
            Username:
            <input type="text" value={this.state.username}></input>
          </label>

          <label>
            Password:
            <input type="text" value={this.state.password}></input>
          </label>
        </form>
      </div>
    );
  }
}
