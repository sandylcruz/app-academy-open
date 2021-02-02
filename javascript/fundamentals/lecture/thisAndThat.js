// let cat = {
//   purr: function() {
//     console.log("meow");
//   },
//   purrMore: function() {
//     for (let i = 0; i < 10; i++) {
//       this.purr();
//     }
//   }
// }
// cat.purr();
// cat.purrMore();

// function times(num, fun) {
//   for (let i = 0; i < num; i++) {
//     fun();
//   }
// }

// const cat = {
//   age: 5,
//   ageOneYear: function() {
//     this.age += 1;
//   }
// };

function SumCalculator() {
  this.sum = 0;
}

SumCalculator.prototype.addNumbers = function(numbers) {
  const sumCalculator = this;

  numbers.forEach(function(number) {
    sumCalculator.sum += number;
  });

  return this.sum;
};
console.log(SumCalculator())

