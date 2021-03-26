import Form from "./form.jsx";
import { connect } from "react-redux";
import { createPokemon } from "../actions/form_actions.js";

const mapStateToProps = (state) => {
  return {
    pokemon: {
      name: "",
      image_url: "",
      type: "",
      attack: "",
      defense: "",
      move1: "",
      move2: "",
    },
  };

  const mapDispatchToProps = (dispatch) => {
    return {
      submit: (form) => dispatch(createForm(form)),
    };
  };

  export default connect(mapStateToProps, mapDispatchToProps)(Form);
};
