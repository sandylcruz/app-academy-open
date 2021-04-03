import BenchMap from "../bench_map/bench_map.jsx";
import BenchIndex from "../bench_index/bench_index.jsx";
import React from "react";

const Search = ({ fetchBenches, benches }) => {
  return (
    <div>
      <BenchMap />
      <BenchIndex fetchBenches={fetchBenches} benches={benches} />
    </div>
  );
};

export default Search;
