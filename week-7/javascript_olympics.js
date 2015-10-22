/*

  PEER PARING CHALLENGE 7.6: JAVASCRIPT OLYMPICS

  WE PAIRED ON THIS CHALLENGE: Becca Nelson & Lars Johnson
  THIS CHALLENGE TOOK US: ___ Hours

*/
// ###########################################################
// BULK UP

function Athlete(name, event) {
  this.name = name,
  this.event = event
}

var sarah = new Athlete("Sarah Hughes", "Ice Skating");
var michael = new Athlete("Michael Jordan", "Basketball");

var athleteArray = [sarah, michael];
console.log(athleteArray);

sarah.win = sarah.name + " won at " + sarah.event;

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


  2. What are constructor functions?


  3. How are constructors different from Ruby classes (in your research)?


*/