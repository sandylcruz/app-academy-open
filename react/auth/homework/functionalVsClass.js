import React from "react";

// CLASS COMPONENT //
class Cat extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      numPets: 0,
    };

    this.handleUpdate = this.handleUpdate.bind(this);
  }

  handleUpdate() {
    //
    // this.state.numPets += 1; // WORST: because mutating state.
    // Does not re - render and update the DOM.Want things to re - render when state changes
    // //
    // this.setState({
    //   numPets: this.state.numPets + 1,
    //   // BAD: because sometimes react batches things in case of clicking div quickly.
    //   // if react is batching things and we're calculating new state based off old state, it might be a stale reference
    //   // this.state isn't updated if batching and performing both in one tick.
    //   // Can't compute new state based off old state
    // });
    this.setState((previousState) => {
      // CORRECT: Because we're referring to previousState in the function, then we will always get the latest previousState
      // Any time you compute new state based off old state, you must use a function
      return {
        numPets: previousState.numPets + 1,
      };
    });
  }

  // this.setState updates this.state.numPets as well as re-renders the DOM to show the update
  // props are an object that's passed to a component on render
  // components have access to 2 things: 1) state and 2) props
  render() {
    // this.props <=> {color: "brown"}
    return (
      <div onClick={this.handleUpdate}>
        {this.props.color} Cat: {this.state.numPets}
      </div>
    );
  }
}

// Render Component:

// <Cat color="brown" />

// ***** //

// FUNCTIONAL COMPONENT //

const Cat = (props) => {
  // only arg passed to functional components is props
  let numPets = 0; // BAD because not re-rendering DOM. There is no setState in functional components
  const handleUpdate = () => {
    numPets += 1;
  };

  return <div onClick={handleUpdate}>Cat</div>;
  //

  return <div>{props.color}Cat:</div>;
};

const Cat = ({ color }) => {
  // props depend on render site passing it through
  return <div>{color}Cat</div>;
};

// HOOKS IN FUNCTIONAL COMPONENTS //

import { useState } from "react"; // function that returns 1 thing:

const OkayCatWithHookState = ({ color }) => {
  const [numPets, setNumPets] = useState(0);

  return (
    <div
      onClick={() =>
        setNumPets((previousNumPets) => {
          // take previous numPets and add one to it
          // this is the previous number of pets. This does not give you the entire state object like setState does
          return previousNumPets + 1;
        })
      }
    >
      {color} Cat: {numPets}
    </div>
  );
};

import { useState, useCallback } from "react";

const BetterCatWithHookState = ({ color }) => {
  const [numPets, setNumPets] = useState(0);

  const handleClick = useCallback(() => {
    // Step 1: Write callback
    setNumPets((previousNumPets) => {
      return previousNumPets + 1;
    });
    // Step 2: Fill in dependencies
    // }, []); // dependency is setNumPets but this is a stable function that react returns
  }, [setNumPets]); // more explicit

  return (
    <div onClick={handleClick}>
      {color} Cat: {numPets}
    </div>
  );
};
