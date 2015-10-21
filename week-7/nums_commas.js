
/* SEPARATE NUMBERS WITH COMMAS IN JAVASCRIPT : ** PAIRING CHALLENGE **

    WE WORKED ON THIS CHALLENGE: Lars Johnson and Chris Savage

// ############################################### RELEASE 1: PSEUDOCODE

 INPUT: Any integer
OUTPUT: A string representing the integer separated with commas

Create a function that accepts the integer as a parameter
Convert integer into a string and split string into an array of individual characters
Reverse the array
Iterate over individual elements in the array
  Insert a comma every 3 characters
  Stop inserting commas when fewer than 3 characters remain
Reverse the array
Join elements of the array and convert back into a string
Output resulting string to console

*/
// ############################################### RELEASE 2: INITIAL SOLUTION

var number = function (num) {
  num = num.toString().split("").reverse();
  for (var index = 0; index < num.length - 3; index +=4){
      num.splice(index + 3, 0, ",");
  }
  num = num.reverse().join("")
  console.log(num)
}
num = 1000000
number(num)


// ############################################### RELEASE 4 : REFACTOR

var number = function(num) {
  num = num.toString().split("").reverse();

  for (var index = 0; index < num.length - 3; index +=4){
      num.splice(index + 3, 0, ",");
  }
  return num.reverse().join("");
};

// CALLING THE FUNCTION

var num = 10000000
number(10000000)
console.log(number(num))

// ############################################### RELEASE 3 : TESTS (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof number(num) === 'string'),
  "The value of num should be a string.",
  "1. "
)

assert(
  number(num) === "10,000,000",
  "The value of num should be 10,000,000.",
  "2. "
)

/*
// ############################################### RELEASE 5 : REFLECTION

1. What was it like to approach the problem from the perspective of JavaScript?
   Did you approach the problem differently?

    I think our pseudocode and logic are pretty similar to what we had for our Ruby
    solution, but the implementation in JavaScript was a little different and a bit
    more challenging because we are less familiar with it.

2. What did you learn about iterating over arrays in JavaScript?

    We learned that there aren't quite as many built-in methods for iterating over
    arrays in JavaScript as there are in Ruby.

3. What was different about solving this problem in JavaScript?

    Apart from the syntax, some of the methods were different in JavaScript. For
    example, JavaScript has #toString vs. #to_s in Ruby, Javascript has #splice
    vs. #insert in Ruby. We also had to find a way of giving our assert tests
    visibility to the variable that we used (num). To do this we *initially*
    created a globally scoped variable without the var keyword in our function.
    That worked, but we later realized that we could just return the value of
    num so long as it was declared outside of the function to begin with.

4. What built-in methods did you find to incorporate in your refactored solution?

    We found the built-in methods #toString, #split, #reverse, #splice, and #join.


*/