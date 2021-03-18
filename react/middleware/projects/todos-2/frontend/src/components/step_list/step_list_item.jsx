class StepListItem extends React.Component {
  render() {
    return (
      <div className="step-components">
        <h3>Step title: {this.step.title}</h3>

        <h3>Step description:{this.step.body} </h3>

        <button
          className={this.props.todo.done ? "done" : "undone"}
          onClick={this.toggleTodo}
        >
          {this.props.todo.done ? "Done" : "Undone"}
        </button>
      </div>
    );
  }
}
