
 //  MANIPULATING JAVASCRIPT OBJECTS

//   I WORKED ON THIS CHALLENGE: Lars Johnson

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}

// __________________________________________________________________________
// RELEASE 1 & 2: YOUR CODE GOES HERE

var adam = {
  name: "Adam"
};

terah.spouse = adam;

terah.weight = 125;

delete terah.eyeColor;

adam.spouse = terah;

terah.children = {};

terah.children.carson = {
  name: "Carson"
  }

terah.children.carter = {
  name: "Carter"
  }

terah.children.colton = {
  name: "Colton"
  }

adam.children = terah.children;


/* __________________________________________________________________________
// REFLECTION

1. What tests did you have trouble passing? What did you do to make it pass?
   Why did that work?

    At first I had trouble passing test #8 in which the carson object is defined under
    the terah children property. It took me a minute to remember that using the object
    literal notation should work for this, but once I remembered it worked fine.

2. How difficult was it to add and delete properties outside of the object itself?

    Adding and deleting properties outside of the object itself was very straightforward,
    so it wasn't difficult at all once I recalled how to add Terah's children.

3. What did you learn about manipulating objects in this challenge?

    I learned that JavaScript makes it very easy to manipulate objects in this challenge.

*/
// __________________________________________________________________________
// DRIVER CODE: DO NOT ALTER BELOW THIS LINE

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)
