import React, { useCallback } from "react";
import { useDispatch, useSelector } from "react-redux";

import { updateBoundsAndFetchBenches as updateBoundsAndFetchBenchesAction } from "../../actions/filter_actions.js";
import Search from "./search.jsx";
import { benchesSelector } from "../../reducers/selectors.js";

const SearchContainer = (props) => {
  const benches = useSelector(benchesSelector);
  // useSelector supplies state to callback. Takes redux store state and passes it through.
  const dispatch = useDispatch();

  const updateBoundsAndFetchBenches = useCallback(
    (bounds) => dispatch(updateBoundsAndFetchBenchesAction(bounds)),
    [dispatch]
  );

  return (
    <Search
      {...props}
      benches={benches}
      updateBoundsAndFetchBenches={updateBoundsAndFetchBenches}
    />
  );
};

export default SearchContainer;
