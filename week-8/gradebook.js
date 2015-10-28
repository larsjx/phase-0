/*
PEER PAIRING CHALLENGE 8.2: GRADEBOOK FROM NAMES AND SCORES

    WE WORKED ON THIS CHALLENGE: Daniel Woznicki & Lars Johnson
    THIS CHALLENGE TOOK 1 HOUR (plus reflection)

You will work with the following two variables. The first, students, holds the names of four students.
The second, scores, holds groups of test scores. The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

DO NOT ALTER THE STUDENTS AND SCORES CODE:

######################################################################################################
INSTRUCTIONS

Follow the steps below to make the tests pass and complete the challenge in your gradebook.js file.
The order of the steps corresponds to the order of the tests. After completing each step, run the
code to check it has passed the test.

In the past, you had the option of using dot notation or bracket notation. In this challenge you need
to use bracket notation to reference some properties...

1. Create a variable gradebook and assign it the value of an empty object.

2. Make each student name in students a property of gradebook and assign each the value of a new object.

3. Give each student property of gradebook its own testScores property and assign it the value of the
   respective students scores from scores.

4. Assign an addScore property to gradebook. Give it the value of a function that accepts name and score
   arguments. Have addScore push the score to the value of the testScore property of the gradebook
   property that matches the value of the name argument.

5. Add the getAverage property to gradebook and assign it the value of a function. (This won't actually
   do anything just yet...)

6. Create a new function average that accepts an array of integers and return the average of those integers.
   NOTE: getAverage and average are different functions.

7. Modify getAverage so that it accepts a name as a String (e.g., "Joseph") and returns that student's
   average score. Use the average function you just created.

######################################################################################################
DO NOT ALTER THE STUDENTS AND SCORES CODE:
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

/*
######################################################################################################
INITIAL SOLUTION
*/

var gradebook = {};
for(var value in students) {
  gradebook[students[value]] = {};
}

var index = 0
for(var grades in gradebook) {
  gradebook[grades].testScores = scores[index];
  index ++
}

gradebook.addScore = function (name, score) {
  gradebook[name].testScores.push(score)
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)
}

var average = function(array) {
  return array.reduce(function(sum, value) {
    return sum + value; }) / array.length
}

/*
#######################################################################################################
REFACTORED SOLUTION

NOTE: The only thing we changed was to separate the callback function from #reduce in order to (a)
      make it easier to read, and (b) create a separate array-summing function for possible re-use.
*/


var gradebook = {};
for(var value in students) {
  gradebook[students[value]] = {};
}

var index = 0
for(var grades in gradebook) {
  gradebook[grades].testScores = scores[index];
  index ++
}

gradebook.addScore = function (name, score) {
  gradebook[name].testScores.push(score)
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)
}
var average = function(array) {
  return array.reduce(sumOfElements) / array.length
}
var sumOfElements = function(sum, value) {
  return sum + value; }

// console.log(gradebook["Joseph"])
// console.log(gradebook.getAverage("Joseph"))

/*
#######################################################################################################
REFLECTION

1. What did you learn about adding functions to objects?

    I learned that it's not very difficult to add fucntions to objects which is a great way of extending
    their usefulness. We had to employ a combination of dot and bracket notation to do this because dot
    notation would not allow us to use variable names for properties.

2. How did you iterate over nested arrays in JavaScript?

    We used a FOR IN loop to iterate over the properties of our gradebook object and we incremented an
    index within the FOR..IN loop to add each row of the nested scores array to a different student's
    record. Finally, we used #reduce to iterate over and sum the individual testscores of each student.

3. Were there any new methods you were able to incorporate? If so, what were they and how did they work?

    We incorporated Javascript's #reduce method to add up each person's individual grades. It works by
    invoking a callback function which we separated out to improve readability and re-usability. The
    callback function is invoked once for each element in the array. In this case it's taking two values
    from each look at the array and summing them. The first parameter is called a previous value, and it
    starts with index 0. The second parameter is the current value which starts with index 1. Each time
    the callback is called it increases the index of the current value and adds it to the previous value.


#######################################################################################################
TEST CODE: DO NOT ALTER CODE BELOW THIS LINE
*/

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)

