import React from "react";

class Form extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      image_url: "",
      type: "",
      attack: "",
      defense: "",
      move1: "",
      move2: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(property) {
    return (event) => this.setState({ [property]: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.createPokemon(this.state);
  }

  render() {
    return (
      <section className="pokemon-form-section">
        <img src={window.images.pokeLogo} alt="Copyright of Nintendo Pokemon" />

        <form className="pokemon-form" onSubmit={this.handleSubmit}>
          <label>
            Name
            <input
              type="text"
              onChange={this.update("name")}
              value={this.state.name}
            ></input>
          </label>

          <label>
            Image url
            <input
              type="text"
              onChange={this.update("image_url")}
              value={this.state.image_url}
            ></input>
          </label>

          <label>
            Type
            <input
              type="dropdown"
              onChange={this.update("type")}
              value={this.state.type}
            ></input>
          </label>

          <label>
            Attack
            <input
              type="text"
              onChange={this.update("attack")}
              value={this.state.attack}
            ></input>
          </label>

          <label>
            Defense
            <input
              type="text"
              onChange={this.update("defense")}
              value={this.state.defense}
            ></input>
          </label>

          <label>
            Move 1
            <input
              type="text"
              onChange={this.update("move1")}
              value={this.state.move1}
            ></input>
          </label>

          <label>
            Move 2
            <input
              type="text"
              onChange={this.update("move2")}
              value={this.state.move2}
            ></input>
          </label>

          <button type="submit">Create Pokemon</button>
        </form>
      </section>
    );
  }
}

export default Form;
