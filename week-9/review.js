// JavaScript RPN calculator.
// I Worked on this challenge...
// I spent X hours on this challenge

// Pseudocode:

// 1. Create a RPN var equal to a function taking a string as an argument.
// 2. Create an input variable equal to the inputed string converted to n strings contained into an array.
// 3. Create a stack variable equal to an empty array.
// 4. Create a variable value (defautl equal to zero). We will use this value to keep track of the calcultations before pushing back the result in the stack.
// 5. Iterate through the input (an array of strings) and check for each element if it is an operator or an operand. We push it to the stack if it's an operand.
// 6. Else, if the element is an operator, we do the math based on the two last elements of the stack.
// 7.We create a switch for input[s] based on 3 cases for each kind of operators:
// it creates a value by computing the two last elements of the stack with the apropriate operator.
// it pops the two last elements from the stack
// it pushed the value/result of the operation back into the stack.
// and keeps going like this until there is nothing else to iterate on.

// ###########################################################
// INITIAL SOLUTION

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



// #############################################################
// Refactored solution

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

// Test
console.log(RPN("70 10 4 + 5 * -"))
console.log(RPN("70 10 +"))
console.log(RPN("70 A +")) // -> NaN (letters...)
console.log(RPN("70 +")) // -> NAN (missing a value)
console.log(RPN("5 75 /")) // -> Return 15