/*
For the first task, you have to create a 
simple function — chooseName() — that 
prints a random name from the provided 
array (names) to the provided paragraph 
(para), and then run it once.
*/

let names = [
  "Chris",
  "Li Kang",
  "Anne",
  "Francesca",
  "Mustafa",
  "Tina",
  "Bert",
  "Jada",
];
let para = document.createElement("p");

function chooseName(names, para) {
  const chosenName = names.rand;
}
