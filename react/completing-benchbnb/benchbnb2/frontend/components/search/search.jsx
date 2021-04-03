import BenchMap from "../bench_map/bench_map.jsx";
import BenchIndex from "../bench_index/bench_index.jsx";
import React from "react";

const Search = ({ benches, fetchBenches, updateBounds }) => {
  return (
    <div className="user-pane">
      <div className="left-half">
        <BenchMap benches={benches} updateBounds={updateBounds} />
      </div>

      <div className="right-half">
        <h1>Benches:</h1>

        <BenchIndex fetchBenches={fetchBenches} benches={benches} />
      </div>
    </div>
  );
};

export default Search;
