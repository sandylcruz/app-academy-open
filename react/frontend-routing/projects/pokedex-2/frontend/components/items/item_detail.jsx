import React from "react";
import { Link } from "react-router-dom";

const ItemDetail = ({ item }) => {
  return (
    <ul className="pokemon-detail-ul">
      <li>
        <h3>{item.name}</h3>
      </li>
      <li>Happiness: {item.happiness}</li>
      <li>Price: {item.price}</li>
    </ul>
  );
};

export default ItemDetail;
