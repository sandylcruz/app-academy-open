// ** CONTAINER COMPONENT ** //
import { connect } from 'react-redux';
import { resetItems } from '../../actions/items' 
  // action creator
import List from '../list';
  // presentational component to connect

const mapStateToProps = (state) => ({
  // map slice of state to props
  items.state.items
})

const mapDispatchToProps = (dispatch) => ({
  // create action dispatcher
  resetItems: () => dispatch(resetItems());
});

const ListContainer = connect(
  mapStateToProps,
  mapDispatchToProps
)(List);
/* Interface b/w store and component it wraps */

export default ListContainer

// ** PRESENTATIONAL COMPONENT ** //
import React from 'react';
import Item from 'components/list/item';

const List = ({ items, resetItems }) => {
  // receives props from ListContainer,
  // deconstructed as items and resetItems
  const listItems = items.map((item, idx) => (
    <Item key={idx} item={item} />
  ))

  return (
    <div className="list">
      <h1 onClick={resetItems}>
        Click to Reset
      </h1>
      <ul className="list-items">
        {listItems}
      </ul>
    </div>
  );
};

export default List

// Item component
import React from 'react';

const Item = ({ item }) => (
  <div className="list-item">
    <h3>{item.name}</h3>
    <span>{item.body}</span>
  </div>
)
export default Item