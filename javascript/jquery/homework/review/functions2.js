// Ways to call a function

// Function-style when unbound
greet(arg1, arg2) { 
  // "this" = "window" or "global"
} 

// Method-style
callie = new Cat("callie");
callie.greet(arg1, arg2) {
  // this = "callie" object
}

// Constructor-style
const Cat = new Cat(arg1, arg2) {
  // Creates new blank object
  // _proto_ set to Cat.prototype
}

// Apply
const callie = {
  name: "Callie"
}

function greet(message) {
  console.log(`${message}: ${this.name}`)
}

greet.apply(callie, ["Hello"]);

// Call
const callie = {
  name: "Callie"
}

function greet(message1, message2) {
  console.log(`${message1}: ${this.name}`)
  console.log(`${message2}: ${this.name}`)
}

greet.call(callie, "Hello", "Goodbye")