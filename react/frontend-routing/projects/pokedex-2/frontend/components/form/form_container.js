import Form from "./form.jsx";
import { connect } from "react-redux";
import { createPokemon } from "../../actions/pokemon_actions.js";
import React from "react";

const mapDispatchToProps = (dispatch) => {
  return {
    createPokemon: (pokemon) => dispatch(createPokemon(pokemon)),
  };
};

export default connect(undefined, mapDispatchToProps)(Form);
