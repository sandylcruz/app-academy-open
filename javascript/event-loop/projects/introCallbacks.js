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
