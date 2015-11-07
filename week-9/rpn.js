/*
JAVASCRIPT RPN CALCULATOR

WE WORKED ON THIS CHALLENGE: Paul Gouron & Lars Johnson
WE SPENT 4.25 HOURS ON THIS CHALLENGE

###################################################################################################
PSEUDOCODE


   INPUT: Receive a string containing a mathematical expression in RPN (postfix) notation
  OUTPUT: Output a number representing the result of the received expression

1. Create a RPN variable equal to a function taking a string as an argument.
2. Create an input variable equal to the inputed string converted to n strings contained into an array.
3. Create a stack variable equal to an empty array.
4. Create a variable value (defautl equal to zero). We will use this value to keep track of the
   calcultations before pushing back the result in the stack.
5. Iterate through the input (an array of strings) and check for each element if it is an operator or
   an operand. We push it to the stack if it's an operand.
6. Else, if the element is an operator, we do the math based on the two last elements of the stack.
7. We create a switch for input[s] based on 3 cases for each kind of operators:
    - it creates a value by computing the two last elements of the stack with the apropriate operator.
    - it pops the two last elements from the stack
    - it pushed the value/result of the operation back into the stack.
    and keeps going like this until there is nothing else to iterate on.
8. Return the stack (or just its value).

###################################################################################################
INITIAL SOLUTION
*/

var RPN = function(string){

  var input = string.split(" ");
  var stack = []
  var len = stack.length
  var value = 0
  var str = 0

  for (var s = 0; s < input.length; s++) {
    str = Number(input[s]);

    if (isNaN(str) === false) {      // Equals Number
        stack.push(str);            // Push onto stack
    }
    else {                          // ELSE do math
      console.log("stack " + stack)
      switch (input[s]) {
        case "+":

          var value = (Number(stack[stack.length-2]) + Number(stack[stack.length-1]))

          stack.pop()
          stack.pop()
          stack.push(value)
          console.log("Add")
          console.log("stack " + stack)
          break

          case "-":
          var value = (Number(stack[stack.length-2]) - Number(stack[stack.length-1]))

          stack.pop()
          stack.pop()
          stack.push(value)
          console.log("Subtract")
          console.log("stack " + stack)
          break

        case "*":
        var value = (Number(stack[stack.length-2]) * Number(stack[stack.length-1]))

          stack.pop()
          stack.pop()
          stack.push(value)
          console.log("Multiply")
          console.log("stack " + stack)
          break
      }
    }
  }
  return stack
}

console.log(RPN("70 10 4 + 5 * -"))


/*
###################################################################################################
REFACTORED SOLUTION
*/

var RPN = function(string){

  var poppush = function () {
          stack.pop()
          stack.pop()
          stack.push(value)
      }

  var input = string.split(" ");
  var stack = []
  var value = 0

  for (var s = 0; s < input.length; s++) {

    if (isNaN(input[s]) === false) {
        stack.push(input[s]);
    }
    else {
      console.log("stack " + stack)

      var first = Number(stack[stack.length-1])
      var second = Number(stack[stack.length-2])

      switch (input[s]) {
        case "+":
          var value = first + second
          poppush()
          break

          case "-":
          var value = first - second
          poppush()
          break

          case "*":
          var value = first * second
          poppush()
          break

          case "/":
          var value = first / second
          poppush()
          break
      }
    }
  }
  return stack
}

/*
###################################################################################################
DRIVER TEST CODE
*/

console.log(RPN("70 10 4 + 5 * -"))
console.log(RPN("70 10 +"))
console.log(RPN("70 A +")) // -> NaN (letters...)
console.log(RPN("70 +")) // -> NAN (missing a value)
console.log(RPN("5 75 /")) // -> Return 15

/*
###################################################################################################
REFLECTION

1. What concepts did you solidify in working on this challenge?

    We solidified several concepts while working on this challenge. A few of these were:

      - isNaN() which tests if an expression is Not a Number (we separate operators from numbers)
      - pop() which deletes the last element of an array (we remove last operated values from stack)
      - push() which adds X elements to the end of an array (we add result of the last op to stack)
      - switch/case which manages flow control (we look for operators then preform operations)

2. What was the most difficult part of this challenge?

    The most difficult part of this challenge was working with the RPN stack.

3. Did you solve the problem in a new way this time?

    After experimenting and considering other options, we ended up using an approach that was very
    similar to my original Ruby solution.

4. Was your pseudocode different from the Ruby version? What was the same and what was different?

    The pseudocode we came up with is logically similar to my original Ruby pseudocode but this time
    it ended up being more detailed because that is how Paul thinks through problems and he likes to
    document everything which is awesome. I do too, but I haven't been quite so detailed in the past.

*/