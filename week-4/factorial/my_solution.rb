# Factorial

# I worked on this challenge with Becca Nelson


# Your Solution Below

def factorial(number)
  if number == 0 || number == 1
    return 1
  end
  result = 1
  for i in 1..number
    result = result * i
    i =+1
  end
  return result
end


# Pseudocode for factorial challenge

# Receive provided number
# Set result equal to one
# FOR provided number of times
#   Multiply counter times result and store in result
#   add 1 to counter
# REPEAT
# Return result


# FINAL refactored solution

def factorial(number)
  p (1..number).to_a.reduce(1, :*)
end


# My test data

factorial(5)