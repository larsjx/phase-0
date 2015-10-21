/*
CHALLENGE 7.2 - ELOQUENT JAVASCRIPT
Run this file in your terminal using 'node eloquent.js'

############################################## PROGRAM STRUCTURE
WRITE YOUR OWN VARIABLE AND DO SOMETHING TO IT
*/

var total = 320;
total = total + 30;
console.log(total);

/*
############################################## REQUEST USER INPUT
NOTE: THIS MUST BE RUN IN THE CHROME CONSOLE

      // var favoriteFood = prompt(“What is your favorite food?”, “”);
      // console.log(“Hey That’s my favorite food too!”)


############################################## LOOPING A TRIANGLE
*/

var pound = "";
for (i = 0; i < 7; i++) {
    pound += "#";
    console.log(pound)
}

/*
############################################## THE 'MININUM' EXERCISE
*/

function min(x, y) {
    if (x == y)
        console.log("Numbers are equal");
    else if (x < y)
        console.log(x);
    else
        console.log(y);
}

min(2, 4)

/*
############################################## CREATE A "ME" OBJECT
STORE YOUR NAME, AGE, 3 FOODS, AND A QUIRK.
*/

var me = {
  name: "Lars",
  age: "48",
  favorite_foods: ["Chinese food", "steak", "gelato"],
  quirk: "I've gone hang gliding in Rio"
};

console.log(me.quirk)

