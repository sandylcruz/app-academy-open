const { render } = require("react-dom");

class StepListItem extends React.Component {
  render() {
    return <div className="step-components">{this.step.title}</div>;
  }
}
