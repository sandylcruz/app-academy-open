import React, { useEffect } from "react";
import { useSelector, useDispatch } from "react-redux";
// import BenchIndexContainer from "./bench_index_container.js";
import BenchIndexItem from "./bench_index_item.jsx";

function BenchIndex({ benches, fetchBenches }) {
  useEffect(() => {
    // component did mount
    fetchBenches();
  }, []); // effect will only run on initial render

  return (
    <div className="bench-index">
      {benches.map((bench) => (
        <div className="index-item-info">
          <span className="index-item-category">Rating:</span>
          <span className="index-item-copy">0</span>
          <span className="index-item-category">Description:</span>
          <span className="index-item-copy">{bench.description}</span>
        </div>
      ))}
    </div>
  );
}

export default BenchIndex;
