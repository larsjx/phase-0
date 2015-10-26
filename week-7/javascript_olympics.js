/*

  PEER PARING CHALLENGE 7.6: JAVASCRIPT OLYMPICS

  WE PAIRED ON THIS CHALLENGE: Becca Nelson & Lars Johnson
  THIS CHALLENGE TOOK US: ___ Hours

*/
// ###########################################################
// BULK UP


var athletes = [ sarah = { name: "Sarah Hughes", sport: "Ladies Singles"},
                  michael = { name: "Michael", sport: "Mens Basketball"} ]

var wins = function(athletes) {
  for (var key in athletes) {
    athletes[key].win = athletes[key].name + " won the " + athletes[key].sport
    console.log(athletes[key])
  }
}

wins(athletes)
// console.log(array)


// The next solution is based on our initial interpretation of the instructions

function Star(name, sport) {
  this.name = name,
  this.event = sport
}

var sarah = new Star("Sarah Hughes", "Ladies Singles");
var michael = new Star("Michael Jordan", "Basketball");

var newArray = [sarah, michael];

function Winner(athleteArray) {
  athleteArray.forEach(function(star) {
    star.win = star.name + " won at " + star.event + "!";
  })
}

Winner(newArray);
console.log(sarah.win);
console.log(sarah);


// ###########################################################
// JUMBLE YOUR WORDS

function stringReverse(string) {
  var stringArray = string.split("");
  stringArray = stringArray.reverse();
  console.log(stringArray.join(""));
}

stringReverse("Jumble your words!")


// ###########################################################
// 2, 4, 6, 8! WHO DO YOU APPRECIATE?

function checkEven(value, index) {
  if (value % 2 === 0) {
    return true;
  }
}

var numbers = [1,2,3,4,5];
var evenNumbers = numbers.filter(checkEven);
console.log(evenNumbers);

// OR THIS VERSION OF 2, 4, 6, 8!

function evenNumbers(numbersArray) {
  var newArray = [];
  numbersArray.forEach(function(n) {
    if (n % 2 === 0) {
      newArray.push(n);
    }
  })
  console.log(newArray);
}


// ###########################################################
// WE BUILT THIS CITY


function Athlete(name, age, sport, quote) {
  this.name = name,
  this.age = age,
  this.sport = sport,
  this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
/* ###########################################################
// REFLECTION

  1. What JavaScript knowledge did you solidify in this challenge?

    I'm definitely still absorbing all of this, but I learned more about creating constructor
    functions in this challenge.

  2. What are constructor functions?

    JavaScript constructor functions are like Ruby instance methods in that changes are made
    to instances of the function instead of universally across the script like they are with
    changes made to the object of object literals. Their properties and methods are defined
    with the keyword 'this' and the assignment operator '=', instead of a colon.

  3. How are constructors different from Ruby classes (in your research)?

    As far as I can tell, JavaScript constructor functions are more like instance methods of
    a Ruby class versus the class itself. Ruby uses objects inherited from a class (that is
    every object is associated with a class) whereas in JavaScript the constructor function
    itself creates the object.

*/