// function sum(nums) {
//   let accumulator = 0;

//   for (let i = 0; i < nums.length; i++) {
//     accumulator = accumulator + nums[i];
//   }

//   return accumulator;
// }
// console.log(sum([1, 2, 3, 4, 5]));

function sum(...nums) {
  let accumulator = 0;

  for (let i = 0; i < nums.length; i++) {
    accumulator = accumulator + nums[i];
  }

  return accumulator;
}
console.log(sum(1, 2, 3, 4, 5));
