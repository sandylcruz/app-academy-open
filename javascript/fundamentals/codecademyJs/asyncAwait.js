// async Keyword
function withConstructor(num) {
  return new Promise((resolve, reject) => {
    if (num === 0) {
      resolve("zero");
    } else {
      resolve("not zero");
    }
  });
}

withConstructor(0).then((resolveValue) => {
  console.log(
    ` withConstructor(0) returned a promise which resolved to: ${resolveValue}.`
  );
});

async function withAsync(num) {
  if (num === 0) {
    return "zero";
  } else {
    return "not zero";
  }
}

withAsync(100).then((resolveValue) => {
  console.log(
    ` withAsync(100) returned a promise which resolved to: ${resolveValue}.`
  );
});

// await Operator
const brainstormDinner = require("./library.js");

function nativePromiseDinner() {
  brainstormDinner().then((meal) => {
    console.log(`I'm going to make ${meal} for dinner.`);
  });
}

async function announceDinner() {
  let meal = await brainstormDinner();
  console.log(`I'm going to make ${meal} for dinner.`);
}

announceDinner();

// Writing async functions
const shopForBeans = require("./library.js");

async function getBeans() {
  console.log(`1. Heading to the store to buy beans...`);
  let value = await shopForBeans();
  console.log(`3. Great! I'm making ${value} beans for dinner tonight!`);
}

getBeans();

// Handling dependent promises
const { shopForBeans, soakTheBeans, cookTheBeans } = require("./library.js");

async function makeBeans() {
  let type = await shopForBeans();
  let isSoft = await soakTheBeans(type);
  let dinner = await cookTheBeans(isSoft);
  console.log(dinner);
}

makeBeans();

function makeBeans() {
  shopForBeans().then((beanType) => {
    soakTheBeans(beanType).then((isSoft) => {
      cookTheBeans(isSoft).then((dinner) => {
        console.log(dinner);
      });
    });
  });
}

// Handling errors
const cookBeanSouffle = require("./library.js");
async function hostDinnerParty() {
  try {
    let dinner = await cookBeanSouffle();
    console.log(`${dinner} is served!`);
  } catch (error) {
    console.log(error);
    console.log("Ordering a pizza!");
  }
}

hostDinnerParty();

// Handling independent promises
let {
  cookBeans,
  steamBroccoli,
  cookRice,
  bakeChicken,
} = require("./library.js");

async function serveDinner() {
  const vegetablePromise = steamBroccoli();
  const starchPromise = cookRice();
  const proteinPromise = bakeChicken();
  const sidePromise = cookBeans();
  console.log(
    `Dinner is served. We're having ${await vegetablePromise}, ${await starchPromise}, ${await proteinPromise}, and ${await sidePromise}.`
  );
}

serveDinner();

// Await Promise.all()
let {
  cookBeans,
  steamBroccoli,
  cookRice,
  bakeChicken,
} = require("./library.js");

// Write your code below:
async function serveDinnerAgain() {
  let foodArray = await Promise.all([
    steamBroccoli(),
    cookRice(),
    bakeChicken(),
    cookBeans(),
  ]);

  let vegetable = foodArray[0];
  let starch = foodArray[1];
  let protein = foodArray[2];
  let side = foodArray[3];

  console.log(
    `Dinner is served. We're having ${vegetable}, ${starch}, ${protein}, and ${side}.`
  );
}

serveDinnerAgain();
