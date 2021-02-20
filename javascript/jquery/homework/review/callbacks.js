// window.setTimeout(function () {
//   console.log("hello");
// }, 2000);

function scheduleGreatMovieReminder(movie) {
  window.setTimeout(function () {
    console.log(`Remember to watch: ${movie}`);
  }, 60 * 1000);
  console.log(`Timer set for ${movie}`);
}

scheduleGreatMovieReminder("Citizen Kane");
scheduleGreatMovieReminder("The Third Man");

//

const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function addTwoNumbers(callback) {
  reader.question("Enter #1: ", function (numString1)) {
    reader.question("Enter #2: ", function (numString 2)) {
      const num1 = parseInt(numString1);
      const num2 = parseInt(numString2);

      callback(num1 + num2);
    }
  }
}

addTwoNumbers(function (result) {
  console.log(`The result is: ${result}`);
  reader.close();
})