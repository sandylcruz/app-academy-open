import React from "react";

const Item = ({ item }) => {
  return (
    <li>
      <img src={item.imageUrl} />
    </li>
  );
};

export default Item;
