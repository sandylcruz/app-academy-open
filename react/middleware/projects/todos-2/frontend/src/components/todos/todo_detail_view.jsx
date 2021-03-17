import { connect } from "react-redux";

class TodoDetailView extends React.Component {
  constructor(props) {
    super(props);
  }

  mapDispatchToProps = (dispatch) => ({
    removeTodo: (todo) => dispatch(removeTodo(todo)),
  });
}

export default connect(null, mapDispatchToProps)(TodoDetailView);
