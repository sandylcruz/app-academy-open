import React from "react";

// // If you want to stop rendering manually, do this:
// class A extends React.Component {
//   shouldComponentUpdate(nextProps, nextState) {
//     if (this.props.benches === nextProps.benches) {
//       return false;
//     }
//   }

//   render() {
//     return (
//       <div>
//         {this.props.benches.map((bench) => (
//           <div>{bench.name}</div>
//         ))}
//       </div>
//     );
//   }
// }

// // If you want to have react do a shallow check on every prop automatically and
// // not render if all props are the same across renders, do this:
// class A extends React.PureComponent {
//   render() {
//     //...
//   }
// }

// // In a functional component, use React.memo instead of React.PureComponent!
// const A = React.memo(() => {
//   /* ... */
// });

const BenchIndex = React.memo(({ benches }) => (
  <div className="bench-index">
    {benches.map((bench) => (
      <div key={bench.id} className="index-item-info">
        <span className="index-item-category">Rating:</span>
        <span className="index-item-copy">0</span>
        <span className="index-item-category">Description:</span>
        <span className="index-item-copy">{bench.description}</span>
      </div>
    ))}
  </div>
));

export default BenchIndex;
