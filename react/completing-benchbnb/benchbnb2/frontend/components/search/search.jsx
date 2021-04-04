import React from "react";

import BenchMap from "../bench_map/bench_map.jsx";
import BenchIndex from "../bench_index/bench_index.jsx";

const Search = ({ benches, updateBoundsAndFetchBenches }) => (
  <div className="user-pane">
    <div className="left-half">
      <BenchMap
        benches={benches}
        updateBoundsAndFetchBenches={updateBoundsAndFetchBenches}
      />
    </div>
    <div className="right-half">
      <h1>Benches:</h1>
      <BenchIndex benches={benches} />
    </div>
  </div>
);

export default Search;
