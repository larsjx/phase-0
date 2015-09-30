# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  # Your code goes here

x = number
result = 1

until x == 1 do
result = result * x
x = x -1
end
# return result
puts result
end

factorial(10)

# Pseudocode

# Set counter equal to the number provided
# Set result variable to 1
# WHILE counter is greater than zero
#   Multiply counter times result
#   Subtract 1 from counter
# END
# Return result