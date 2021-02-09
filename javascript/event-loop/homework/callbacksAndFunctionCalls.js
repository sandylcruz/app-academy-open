// Simple timeout
window.setTimeout(function () {
  alert("callie time");
}, 5000);

Timeout with closure
function callieTime(time) {
  window.setTimeout(function () {
    alert(`${time} is callie time!`);
  });
}
callieTime(1200);

// Some tea? Some biscuits?
const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});
function teaAndBiscuits() {
  reader.question("Would you like some tea?", function (firstResponse) {
    console.log(`You replied ${firstResponse}`);
    reader.question("Would you like some biscuits?", function (secondResponse) {
      console.log(`You replied ${secondResponse}.`);
      const firstRes = firstResponse === "yes" ? "do" : "do not";
      const secondRes = secondResponse === "yes" ? "do" : "do not";

      console.log(
        `So you ${firstRes} want tea and you ${secondRes} want biscuits.`
      );
      reader.close();
    });
  });
}

// Ways to call a function
function Cat() {
  this.name = "Callie";
  this.age = 17;
}

function Kitten() {
  this.name = "Squeaky";
  this.age = 4;
}

Kitten.prototype.chase = function (cat) {
  console.log(`My name is ${this.name}, and I'm chasing ${cat.name}!`);
};

const Callie = new Cat();
const Squeaky = new Kitten();

Squeaky.chase(Callie);
Squeaky.chase.call(Callie, Squeaky);
Squeaky.chase.apply(Callie, [Squeaky]);
