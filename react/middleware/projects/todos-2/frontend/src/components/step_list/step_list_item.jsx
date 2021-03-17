class StepListItem extends React.Component {
  render() {
    return (
      <div className="step-components">
        {this.step.title}
        {this.step.body}
      </div>
    );
  }
}
