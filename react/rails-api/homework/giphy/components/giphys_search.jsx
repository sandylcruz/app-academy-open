import React from "react";

import GiphysIndex from "./giphys_index";

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: "",
    };
  }

  render() {
    return (
      <div className="giphysSearch">
        GiphysSearch
        <input type="search" value={this.props.searchTerm}></input>
        <button type="submit">Submit!</button>
      </div>
    );
  }
}

export default GiphysSearch;
