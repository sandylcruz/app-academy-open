import React from "react";

import GiphysIndex from "./giphys_index";

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: "cats",
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ searchTerm: event.currentTarget.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    const searchTerm = this.state.searchTerm.split("").join("");
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    let { giphys } = this.props;

    return (
      <div className="search-bar">
        <form className="search-bar">
          <input type="search" value={this.state.searchTerm} onChange={this.handleChange /}>
          <button type="submit" onClick={this.handleSubmit}>Submit!</button>
        </form>

        <GiphysIndex giphys={giphys} />
      </div>
    );
  }
}

export default GiphysSearch;
