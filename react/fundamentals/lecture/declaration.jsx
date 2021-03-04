class List extends React.Component {
  constructor() {
    super();
    this.state = { items: [] };
  }

  componentDidMount() {
    $.ajax({
      url: "/items",
      success: (items) => this.setState({ items }),
    });
  }

  render() {
    return (
      <h1>{this.props.title}</h1>;
      <ul>
        {
          this.state.items.map(item => (<li>{item}</li>))
        }
      </ul>
    );
  }
}
