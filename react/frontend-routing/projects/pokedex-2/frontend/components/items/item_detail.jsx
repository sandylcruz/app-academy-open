import React from "react";

const ItemDetail = ({ item }) => {
  return (
    <ul>
      <li>
        <h3>{item.name}</h3>
      </li>
      <li>Happiness: {item.happiness}</li>
      <li>Price: {item.price}</li>
      <section className="toys">
        <h3>Items</h3>
      </section>
    </ul>
  );
};

export default ItemDetail;
