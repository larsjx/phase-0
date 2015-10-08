=begin

# NUMBERS TO COMMAS SOLO CHALLENGE

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

----------------------------------------------------------
# INSTRUCTIONS
----------------------------------------------------------

Write a method (separate_comma) which takes a positive integer as its input and returns a comma-separated integer as a string. Like this:

    separate_comma(1000)    # => "1,000"
    separate_comma(1000000) # => "1,000,000"
    separate_comma(0)       # => "0"
    separate_comma(100)     # => "100"

Make sure you complete each challenge component. You will receive feedback from a guide as well as peers on this challenge, and they will review each release.

NOTE: Even if you are comfortable with regular expressions, do not use them in this challenge. This challenge is all about the logic!

Before starting, be sure you feel confident using flow-control techniques. Get a better grasp by reading Ch. 6 in the Well-Grounded Rubyist.

----------------------------------------------------------
# 0. PSEUDOCODE
----------------------------------------------------------

   INPUT:  A positive integer is provided as input
  OUTPUT:  A comma separated integer as a string is the required output.

  THE STEPS NEEDED TO SOLVE THIS PROBLEM:

  1.  DEFINE a method (separate_comma) which takes one positive integer (num) as it's argument
  2.  CREATE a new empty array called (result_arr)
  3.  CONVERT (num) into a string
  4.  REVERSE the string (num)
  5.  SPLIT (num) into an array (orig_arr) of individual strings representing # in reverse
  6.  FOR each index (i) of the array (rev_value_arr)
  7.  FOR  IF (i) does not equal 0 and (i) divides evenly by 3
  8.  FOR    PUSH a comma "," into the array called (result_arr)
  9.  FOR  ELSE if (i) does equal 0 or (i) is evenly divisible by 3
  10. FOR    PUSH the array value of (orig_arr) at index (i) into the array (result_arr)
  11. REVERSE the order of elements in the array (result_arr)
  12. JOIN the separate elements of the array (result_arr) into a string
  13. CONVERT (result_arr) into a string
  14. OUTPUT (result_arr) as a string for the answer

----------------------------------------------------------
# 1. INITIAL SOLUTION
----------------------------------------------------------
=end

def separate_comma(num)
  result_arr = []
  i = 0
  num = num.to_s.reverse
  orig_arr = num.split("")
  for i in 0...orig_arr.length
    if i % 3 == 0 && i != 0
      result_arr << orig_arr[i] + ","
    else
      result_arr << orig_arr[i]
    end
    i = i + 1
  end
  p result_arr.reverse.join
end


### SAMPLE INPUT FOR PERSONAL TESTING
separate_comma(100000000)


# --------------------------------------------------------
# 2. FIRST REFACTORED SOLUTION
# --------------------------------------------------------

def separate_comma(num)
 result = []
 i = -1
  arr = num.to_s.reverse.split("")
  arr.each { |digit| i += 1
    if i != 0 && i % 3 == 0
      result << digit + ","
    else
      result << digit
    end
  }
  p result.reverse.join
end


### SAMPLE INPUT FOR PERSONAL TESTING
separate_comma(100000000)


# --------------------------------------------------------
# 2b. FINAL REFACTORED SOLUTION
# --------------------------------------------------------

def separate_comma(num)
 result = []
 i = -1
  arr = num.to_s.reverse.split("")
  arr.each { |v| i += 1
    if i != 0 && i % 3 == 0
      result << v + ","
    else
      result << v
    end
  }
  p result.reverse.join
end


### SAMPLE INPUT FOR PERSONAL TESTING
separate_comma(100000000)


=begin
# --------------------------------------------------------
# 3. Reflection
# --------------------------------------------------------


1. What was your process for breaking the problem down? What different approaches did you consider?

    I started by writing a few different numbers down 1,000, 10,0000, etc. and looking at them carefully. Three things became clear while I was doing this. First I didn't think it was possible to split an integer value into it's component elements without turning it into a string. Second, I realized that breaking a string into pieces, inserting commas, and putting it back together could be done by converting it into an array and then back into a string. Third, it occured to me that trying to add commas from left to right would take far more logic than simply adding them after every third position from right to left.
    Since I had just realized the value of pseudocode in hindsight on another project, I was eager to jump into that next.

2. Was your pseudocode effective in helping you build a successful initial solution?

    My pseudocode isn't a one for one map to my Ruby code, but it was absolutely effective in helping me build a successful initial solution. I tested my code frequently as I was working through each step of the solution and there were a couple of points along the way, when I realized there were a few errors in the logic of my pseudocode. I wasn't far off at all, but enough that I had to resolve those issues in order to make the solution work. For example, in trying to insert a comma after every third digit from the right, I encountered the problem that my 4th digit was getting replaced by the comma. Once I saw what was happening, it was relatively easy to fix.

3. What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?


4. How did you initially iterate through the data structure?

    I used a for loop to iterate over the number of elements in my reversed array of strings, but I also considered using a while loop or .each. In the end, I stuck with the for loop on my original solution, and went with .each on my first refactoring.


5. Do you feel your refactored solution is more readable than your initial solution? Why?




=end