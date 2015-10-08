# Pad an Array

# I worked on this challenge with: Jon Chen

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. PSEUDOCODE

# INPUT: Array, minimum # of elements, optional pad value
# OUTPUT: Array with length equal to minimum # of elements with pad values if needed
#
# DEFINE a destructive method that accepts input (above) defaulting optional padding to nil
#   IF array length is greater than minimum size, output array
#   ELSE loop
#     Add padding for difference between array length and minimum size
# Output an array equal to minimum # of elements including pad values if needed
# Repeat with non-destructive method


# 1. INITIAL SOLUTION
# DESTRUCTIVE

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  elsif min_size == 0
    return array
  else
    for i in 1..(min_size - array.length) do
      array << value
    end
    return array
  end
end

# NON-DESTRUCTIVE

def pad(array, min_size, value = nil)
  new_array = []
  for x in 0..array.length-1
    new_array[x] = array[x]
  end
  # p new_array.object_id == array.object_id
  if array.length >= min_size
    return new_array
  elsif min_size == 0
    return new_array
  else
    for i in 1..(min_size - array.length)
      new_array << value
    end
  return new_array
  end
end


# 3. REFACTORED SOLUTION

def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    for i in 1..(min_size - array.length)
      array << value
    end
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  for x in 0...array.length
    new_array[x] = array[x]
  end
  if array.length < min_size
    # new_array += (new_array.length...min_size).map { value }
    for i in 1..(min_size - array.length)
      new_array << value
    end
  end
  return new_array
end


=begin

# 4. REFLECTION


1. Were you successful in breaking the problem down into small steps?

    I believe we were moderately successful in breaking the problem into small steps. In hindsight, we should have gone even further as we could have detailed the important differences needed in our destructive and non-destructive methods.


2. Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

    We were able to easily translate our pseudocode into code but as I mentioned above, we failed to provide enough detail on the distinctions between our destructive and non-destructive methods. As a result we had some initial trouble getting our non-destructive method to pass all of the tests.


3. Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

    Our initial solution was eventually able to pass all of the tests, but not at first. We started off receiving some errors that inidicated our non-destructive method was in fact destroying the original array. We were able to verify this by comparing object IDs and we solved the problem by initializing a new array and populating that new object versus modifying the original array in place.


4. When you refactored, did you find any existing methods in Ruby to clean up your code?

    We found that we could use the .map method to eliminate three lines of code. but we felt our originally solution was actually cleaner and easier to read without using .map so we left it out of our refactored solution.


5. How readable is your solution? Did you and your pair choose descriptive variable names?

    Our code is very easy to read as we intentionally chose to use descriptive variable names and made the conscious decision to use a FOR LOOP over the more concise .map method which can be a little trickier to read.


6. What is the difference between destructive and non-destructive methods in your own words?

    Non-destructive methods create a new object with the intended properties while destructive methods modify the receiver in place. In other words destructive methods modify the original object upon which they are applied.

=end
