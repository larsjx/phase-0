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