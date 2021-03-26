import React from "react";

const Item = ({ item }) => {
  return (
    <ul className="toy-list">
      <li>
        <img src={item.imageUrl} />
      </li>
    </ul>
  );
};

export default Item;
