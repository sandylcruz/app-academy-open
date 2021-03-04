class MyAjaxComponent extends React.Component {
  constructor() {
    super();
    this.state = { items: [] };
  }

  componentDidMount() {
    $.ajax({
      url: "/items",
      success: (response) => this.setState({ items: response }),
    });
  }

  render() {
    if (this.state.items.length === 0) {
      return <div>Fetching items...</div>;
    } else {
      return (
        <ul>
          {this.state.items.map((item) => (
            <li>{item}</li>
          ))}
        </ul>
      );
    }
  }
}
