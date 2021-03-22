import React from "react";

import GiphysIndex from "./giphys_index";

class GiphysSearch extends React.Component {
  constructor() {
    super();
    this.state = { searchTerm: "cat" };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ searchTerm: event.currentTarget.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    let searchTerm = this.state.searchTerm.split(" ").join("+");
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    const { giphys } = this.props;
    console.log("***", giphys);
    return (
      <div>
        <form className="search-bar" onSubmit={this.handleSubmit}>
          <input value={this.state.searchTerm} onChange={this.handleChange} />
          <button type="submit">Search Giphy</button>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    );
  }
}

export default GiphysSearch;
