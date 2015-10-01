# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Becca Nelson

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total(array)
  sum = 0
  i = 0
  while i < array.length do
    sum = sum + array[i]
    i += 1
  end
  return sum
  puts sum
  end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution


# def sentence_maker (array)
# puts array
# end
sentence_maker=[]
def sentence_maker(*array)
text = ""
array[0].capitalize!
array[array.length-1] = array[array.length-1]+"."
for i in 0..array.length-1
  text = text + " " + array[i]
  i += 1
end
puts text
return text
end

sentence_maker ("all", "my", "socks", "are", "dirty")


# 6. sentence_maker refactored solution