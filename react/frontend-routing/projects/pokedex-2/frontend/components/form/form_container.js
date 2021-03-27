import Form from "./form.jsx";
import { connect } from "react-redux";
import { createPokemon } from "../actions/form_actions.js";
import React from "react";

mapDispatchToProps = (dispatch) => {
  return {
    createPokemon: (pokemon) => dispatch(createPokemon(pokemon)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Form);
