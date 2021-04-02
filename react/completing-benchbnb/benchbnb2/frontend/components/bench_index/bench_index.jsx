import React, { useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
import BenchIndexContainer from "./bench_index_container.js";

function BenchIndex({ benches, fetchBenches }) {
  useEffect(() => {
    // component did mount
    fetchBenches();
  }, []); // effect will only run on initial render

  return (
    <div className="bench-index">
      <h1>Benches:</h1>
      {benches.map((bench) => console.log(bench))}
    </div>
  );
}

export default BenchIndex;
