class Clock {
  constructor() {
    const date = new Date();
    this.hours = date.getHours();
    this.minutes = date.getMinutes();
    this.seconds = date.getSeconds();

    this.printTime(date);
    this._tick(date);
  }

  printTime(date) {
    console.log`The time is ${this.hours}: ${this.minutes}:${this.seconds}`;
  }

  _tick(date) {
    this.seconds += 1;
    this.printTime(date);
  }
}
const clock = new Clock();

addNumbers;
const readline = require("readline");
reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function addNumbers(sum, numsLeft, completionCallback) {
  if (numsLeft > 0) {
    reader.question("Tell me a number", (answer) => {
      const number = parseInt(answer);
      const newSum = sum + number;
      console.log(`The new sum is ${newSum}`);
      addNumbers(newSum, numsLeft - 1, completionCallback);
    });
  } else if (numsLeft === 0) {
    completionCallback(sum);
    reader.close();
  }
}
addNumbers(0, 3, (sum) => console.log(`Total Sum: ${sum}`));

absurdBubbleSort;
const readline = require("readline");
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function askIfGreaterThan(el1, el2, callback) {
  reader.question(
    "Is " + el1 + " greater than " + el2 + "?: ",
    function (answer) {
      if (answer == "yes") {
        callback(true);
      } else {
        callback(false);
      }
    }
  );
}

function innerBubbleSortLoop(array, i, madeAnySwaps, outerBubbleSortLoop) {
  if (i === array.length - 1) {
    outerBubbleSortLoop(madeAnySwaps);
    return;
  }

  if (i < array.length - 1) {
    askIfGreaterThan(array[i], array[i + 1], function (isGreaterThan) {
      if (isGreaterThan) {
        const firstValue = array[i];
        array[i] = array[i + 1];
        array[i + 1] = firstValue;
        madeAnySwaps = true;
      }

      innerBubbleSortLoop(array, i + 1, madeAnySwaps, outerBubbleSortLoop);
    });
  }
}

function absurdBubbleSort(array, sortCompletionCallback) {
  function outerBubbleSortLoop(madeAnySwaps) {
    if (madeAnySwaps) {
      innerBubbleSortLoop(array, 0, false, outerBubbleSortLoop);
    } else {
      sortCompletionCallback(array);
    }
  }
  outerBubbleSortLoop(true);
}
absurdBubbleSort([3, 2, 1], function (arr) {
  console.log("Sorted array: " + JSON.stringify(arr));
  reader.close();
});

// myBind

Function.prototype.myBind = function myBind(context) {
  return () => this.apply(context);
};

class Lamp {
  constructor() {
    this.name = "a lamp";
  }
}

const turnOn = function () {
  console.log("Turning on " + this.name);
};

const lamp = new Lamp();
turnOn();

const boundTurnOn = turnOn.bind(lamp);
const myBoundTurnOn = turnOn.myBind(lamp);

boundTurnOn();
myBoundTurnOn();

// myThrottle and myDebounce

Function.prototype.myThrottle = function myThrottle(interval) {
  let tooSoon = false;
  return () => {
    if (!tooSoon) {
      tooSoon = true;
      setTimeout(() => {
        tooSoon = false;
      }, interval);
      this(...arguments);
    }
  };
};

class Neuron {
  fire() {
    console.log("Firing");
  }
}
const neuron = new Neuron();
const interval = setInterval(() => {
  neuron.fire();
}, 10);

clearInterval(interval);
neuron.fire = neuron.fire.myThrottle(500);

setInterval(() => {
  neuron.fire();
}, 10);

class Neuron2 {
  constructor() {
    this.fire = this.fire.myThrottle(500);
  }

  fire() {
    console.log("Firing");
  }
}

// myDebounce

Function.prototype.myDebounce = function myDebounce(delay) {
  let timeout;
  return (...args) => {
    if (timeout) {
      clearTimeout(timeout);
      timeout = setTimeout(() => {
        this(...args);
        clearTimeout(timeout);
      }, delay);
    } else {
      timeout = setTimeout(() => {
        this(...args);
        clearTimeout(timeout);
      }, delay);
    }
  };
};

class SearchBar {
  constructor() {
    this.query = "";
    this.type = this.type.bind(this);
    this.search = this.search.bind(this);
    this.search = this.search.myDebounce(800);
  }

  type(letter) {
    this.query += letter;
    this.search();
  }

  search() {
    console.log(`searching for ${this.query}`);
  }
}

const searchBar = new SearchBar();

const queryForHelloWorld = () => {
  searchBar.type("h");
  searchBar.type("e");
  searchBar.type("l");
  searchBar.type("l");
  searchBar.type("o");
  searchBar.type(" ");
  searchBar.type("w");
  searchBar.type("o");
  searchBar.type("r");
  searchBar.type("l");
  searchBar.type("d");
};

queryForHelloWorld();
