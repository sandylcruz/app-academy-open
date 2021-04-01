import React from "react";
import { useSelector, useDispatch } from "react-redux";
// import BenchIndexContainer from "./bench_index_container.js";

function BenchIndex(benches) {
  // const dispatch = useDispatch();
  return (
    <div className="bench-index">
      <h2>Benches</h2>
      This is the right half(bench index)
    </div>
  );
}

export default BenchIndex;
