function sum(nums) {
  let accumulator = 0;

  for (let i = 0; i < nums.length; i++) {
    accumulator = accumulator + nums[i];
  }

  return accumulator;
}
// console.log(sum([1, 2, 3, 4, 5]));

function sum(...nums) {
  let accumulator = 0;

  for (let i = 0; i < nums.length; i++) {
    accumulator = accumulator + nums[i];
  }

  return accumulator;
}
// console.log(sum(1, 2, 3, 4, 5));

Function.prototype.myBind = function (newThis) {
  const boundFunction = this;
  return function boundFunction() {
    return boundFunction.apply(newThis);
  };
};

Function.prototype.myBind1 = function (newThis) {
  const boundFunction = this;
  const bindArguments = Array.from(arguments).slice(1);
  return function boundFunction() {
    const callArguments = Array.from(arguments);
    return boundFunction.apply(newThis, bindArguments.concat(callArguments));
  };
};

function fullName(salutation, firstName) {
  console.log(salutation, firstName, this.lastName);
}

const person = {
  fname: "Callie",
};

// const boundName = fullName.bind(person, "Miss");

//
function sumThree(num1, num2, num3) {
  return num1 + num2 + num3;
}

function curriedSum(numArgs) {
  const numbers = [];

  function _curriedSum(number) {
    numbers.push(number);
    if (numbers.length === numArgs) {
      let sum = 0;
      for (let i = 0; i < numbers.length; i++) {
        sum += numbers[i];
      }

      return sum;
    } else {
      return _curriedSum;
    }
  }

  return _curriedSum;
}
const theSum = curriedSum(4);
const csum = theSum(5)(30)(20)(1);
console.log(csum);

// Function.prototype.curry = function (numArgs) {
//   const handler = function (argument) {
//     this(argument);
//   };

//   handler.bind(this);

//   return handler;
// };

// console.log(sumThree(4, 20, 6));

//

// const f1 = sumThree.curry(3);
// console.log(f1(1));
