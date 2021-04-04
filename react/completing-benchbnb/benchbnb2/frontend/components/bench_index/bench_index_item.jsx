import React from "react";

const BenchIndexItem = React.memo(() => (
  <div className="bench-index-item">
    <ul>
      <li>Rating</li>
      <li>Description</li>
      <li>Seats</li>
      <li>Latitude</li>
      <li>Longitude</li>
    </ul>
    <h2>Reviews</h2>
  </div>
));

export default BenchIndexItem;
