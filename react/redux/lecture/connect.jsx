// ** mapStateToProps(state, ownProps) ** /
// Connect() is a map

import { connect } from "http2";

// Tells connect() how to map state into props
const createConnectedComponent = connect(mapStateToProps, mapDispatchToProps);

const ConnectedComponent = createConnectedComponent(MyComponent);

const MyComponent = ({ name} ) => (
  <div>{name}</div>
)

const mapStateToProps = state => ({
  name: state.name;
})

const ConnectedComponent = connect(mapStateToProps)(MyComponent)
// will render MyComponent, passing name as prop

const deleteToDo = id => ({ type: "DELETE_TODO", id});
const addTodo = msg => ({ type: "ADD_TODO", msg})

const mapDispatchToProps = dispatch => ({
  handleDelete: id => dispatch(deleteToDo(id));
  handleAdd: msg => dispatch(addTodo(msg))
})
/*  accepts store's dispatch method
    returns object containing functions that can be
    called to dispatch actions to store.
    These action dispatchers are then passed
    as props to component. */

// put it all together //
  const MyComponent = ({ firstName, initials, handleAdd, handleDelete}) => {
    return <div>...</div>
  }

  const mapStateToProps = (state, ownProps) => ({
    firstName: state.name,
    initials: `${state.name[0]}. ${ownProps.lastName[0]}`
  })

  const mapDispatchToProps = dispatch => ({
    handleDelete: id => dispatch(deleteTodo(id)),
    handleAdd: msg => dispatch(addTodo(msg))
  })

  export default connect(
    mapStateToProps,
    mapDispatchToProps
  )(MyComponent)
  // Mycomponent will receive fname, initials, handledelete, handleadd as props

  // Simplified pseudo-version

  function connect(mapStateToProps, mapDispatchToProps) {
    // Returns a function that takes your component as an argument
    return function(YourAwesomeComponent) {
      // Leaving out some details, but basically we have access to
      // the store via the context set up by the Provider
  
      // Your mapStateToProps function gets called with the store's state
      const stateProps = mapStateToProps(store.getState());
      // Your mapDispatchToProps function gets called with the store's dispatch function
      const dispatchProps = mapDispatchToProps(store.dispatch);
  
      // Returns a React component that renders your component with all the props
      return function Connect(moreProps) {
        const props = Object.assign(stateProps, dispatchProps, moreProps);
  
        return <YourAwesomeComponent {...props} />;
      };
    };
  }