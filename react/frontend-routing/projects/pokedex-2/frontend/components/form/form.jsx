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
      <section className="pokemon-detail">
        <img src={window.images.pokeLogo} alt="Copyright of Nintendo Pokemon" />

        <form className="pokemon-form" onSubmit={this.handleSubmit}>
          <input
            type="text"
            onChange={this.update("name")}
            placeholder="Name"
            value={this.state.name}
          ></input>

          <input
            type="text"
            onChange={this.update("image_url")}
            placeholder="Image url"
            value={this.state.image_url}
          ></input>

          <input
            type="dropdown"
            onChange={this.update("type")}
            placeholder="Type"
            value={this.state.type}
          ></input>

          <input
            type="number"
            onChange={this.update("attack")}
            placeholder="Attack"
            value={this.state.attack}
          ></input>

          <input
            type="number"
            onChange={this.update("defense")}
            placeholder="Defense"
            value={this.state.defense}
          ></input>

          <input
            type="text"
            onChange={this.update("move1")}
            value={this.state.move1}
            placeholder="Move 1"
          ></input>

          <input
            type="text"
            onChange={this.update("move2")}
            value={this.state.move2}
            placeholder="Move 2"
          ></input>

          <button type="submit">Create Pokemon</button>
        </form>
      </section>
    );
  }
}

export default Form;
