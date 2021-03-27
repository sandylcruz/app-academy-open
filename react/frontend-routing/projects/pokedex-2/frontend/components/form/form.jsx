import React from "react";

class Form extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      imageUrl: "",
      pokeType: "",
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

  handleSubmit(e) {
    e.preventDefault();
    this.props.createPokemon(this.state).then((newPokemon) => {
      this.props.history.push(`pokemon/${newPokemon.id}`);
    });
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
            onChange={this.update("imageUrl")}
            placeholder="Image url"
            value={this.state.imageUrl}
          ></input>

          <input
            type="dropdown"
            onChange={this.update("pokeType")}
            placeholder="Type"
            value={this.state.pokeType}
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
