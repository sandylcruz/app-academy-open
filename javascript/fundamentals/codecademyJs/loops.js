// Repeating tasks manually
const vacationSpots = ['Iceland', 'Germany', 'UK'];

console.log(vacationSpots[0]);
console.log(vacationSpots[1]);
console.log(vacationSpots[2]);

// For loop
for (let i = 5; i < 11; i++) {
  console.log(i);
}

// Looping in reverse
for (let counter = 3; counter >= 0; counter--) {
  console.log(counter);
}

// Looping through arrays
const vacationSpots = ['Bali', 'Paris', 'Tulum'];
for (let i = 0; i < vacationSpots.length; i++) {
  console.log('I would love to visit ' + vacationSpots[i]);
}

// Nested loops
// Write your code below
const bobsFollowers = ['callie', 'squeaky', 'linus', 'phoenix'];
const tinasFollowers = ['katerina', 'squeaky', 'callie'];

let mutualFollowers = [];

for (let i = 0; i < bobsFollowers.length; i++) {
  for (let j = 0; j < tinasFollowers.length; j++) {
    if (bobsFollowers[i] === tinasFollowers[j]) {
      mutualFollowers.push(bobsFollowers[i]);
    }
  }
};

// While loop
const cards = ['diamond', 'spade', 'heart', 'club'];

let currentCard;

while (currentCard != 'spade') {
  currentCard = cards[Math.floor(Math.random() * 4)];
  console.log(currentCard);
}



