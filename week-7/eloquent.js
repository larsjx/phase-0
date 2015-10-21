// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var total = 320;
total = total + 30;
console.log(total);


// Request User Input : Favorite Food
// NOTE: THIS ONE MUST BE RUN IN THE CHROME CONSOLE

// var favoriteFood = prompt(“What is your favorite food?”, “”);
// console.log(“Hey That’s my favorite food too!”)


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// ########### LOOPING A TRIANGLE

var pound = "";
for (i = 0; i < 7; i++) {
    pound += "#";
    console.log(pound)
}


// Functions

// Complete the `minimum` exercise.

function min(x, y) {
    if (x == y)
        console.log("Numbers are equal");
    else if (x < y)
        console.log(x);
    else
        console.log(y);
}

min(2, 4)



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.


var me = {
  name: "Lars",
  age: "48",
  favorite_foods: ["Chinese food", "steak", "gelato"],
  quirk: "I've gone hang gliding in Rio"
};

console.log(me.quirk)