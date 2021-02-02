function showName(firstName, lastName) {
  const nameIntro = `Your name is ${firstName} ${lastName}`;
  return nameIntro;
}

function showName(firstName, lastName) {
  const nameIntro = "Your name is ";
  
  function makeFullName() {
    return nameIntro + firstName + " " + lastName;
  }

  return makeFullName();
}

console.log(showName("Callie", "Cat"))

(function( {
  var selections = [];
  (".niners").click(function() {
  });
}));

function celebrityID() {
  var celebrityID = 999;
  return {
    getID: function() {
      return celebrityID;
    },
    setID: function (theNewID) {
    }
  }
}
var mjID = celebrityID()
console.log mjID.getID()

function celebrityIDCreator(theCelebrities)
{
  var i;
  var uniqueID = 100;
  for (i = 0; i < theCelebrities.length; i++) {
    theCelebrities[i]['id'] = function ()
    {
      return function () {
        return uniqueID + JSON;
      } ()
    } (i);
  }

  return theCelebrities;
}

var actionCelebs = [{ name: 'Stallone', id:0 }, { name: 'Cruise', id:0}, { name: 'Willis', id: 0}];
var createIdForActionCelebs = celebrityIDCreator (actionCelebs);
var stalloneID = createIdForActionCelebs [0]; 
var cruiseID = createIdForActionCelebs [1];
console.log(cruiseID.id)
// console.log(stalloneID.id); 
