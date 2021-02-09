// function setInterval(callback, delay[...args]) {

// }

// class Clock {
//   constructor() {
//     const date = new Date();
//     this.hours = date.getHours();
//     this.minutes = date.getMinutes();
//     this.seconds = date.getSeconds();

//     this.printTime(date);
//     this._tick(date);
//   }

//   printTime(date) {
//     console.log`The time is ${this.hours}: ${this.minutes}:${this.seconds}`;
//   }

//   _tick(date) {
//     this.seconds += 1;
//     this.printTime(date);
//   }
// }
// const clock = new Clock();

// addNumbers
// const readline = require("readline");
// reader = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout,
// });

// function addNumbers(sum, numsLeft, completionCallback) {
//   if (numsLeft > 0) {
//     reader.question("Tell me a number", (answer) => {
//       const number = parseInt(answer);
//       const newSum = sum + number;
//       console.log(`The new sum is ${newSum}`);
//       addNumbers(newSum, numsLeft - 1, completionCallback);
//     });
//   } else if (numsLeft === 0) {
//     completionCallback(sum);
//     reader.close();
//   }
// }
// addNumbers(0, 3, (sum) => console.log(`Total Sum: ${sum}`));

// absurdBubbleSort
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
    console.log("Out of the loop");
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

      console.log("In the inner if loop");
      innerBubbleSortLoop(array, i + 1, madeAnySwaps, outerBubbleSortLoop);
    });
  }
}
innerBubbleSortLoop([3, 2, 1], 0, false, false);
// reader.close();

// function outerBubbleSortLoop(madeAnySwaps) {
//   console.log("In the outer loop");
// }

// function absurdBubbleSort(array, sortCompletionCallback) {}
