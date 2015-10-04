# Add it up!

# I worked on this challenge with Becca Nelson


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


#0. Pseudocode for total

# Input:   An array of integers
# Output:  The sum of the numbers in the array

# Steps to solve the problem.
  # Receive an array of numbers
  # Set variable for sum to zero
  # Set counter to 0
  # WHILE counter is less than number of items in the array
  #    Add sum to array index of counter
  #    increment counter by 1
  # END
  # Return variale for sum


#1. Initial solution for total

def total(numbers)
  sum = 0
  i = 0
  while i < numbers.length do
    sum = sum + numbers[i]
    i += 1
  end
  return sum
  puts sum
end


#2. Refactored solution for total

def total(numbers) numbers.reduce(:+) end


#3. Pseudocode for sentence_maker

# Input:   An array of strings (words) and numbers
# Output:  Grammatically correct sentences with capitalization and period

# Steps to solve the problem.
  # Receive an array of strings (words) and numbers
  # Initialize variable for completed sentance
  # Capitalize the first letter of the first string
  # Add period to the end of the last string
  # Add the first (Capitalized) word to variable for completed sentence
  # WHILE counter is between 1 and less than number of items in the array
  #    Convert item at array index of counter to string (in case it's a #)
  #    Add item at array index of counter to completed sentence variable
  #    increment counter by 1
  # END
  # Return variable for completed sentence


#4. Initial solution for sentence_maker

sentence_maker=[]
def sentence_maker(words)
  text = ""
  words[0].capitalize!
  words[words.length-1] = words[words.length-1]+"."
  text = text + words[0]
  for i in 1..words.length-1
    text = text + " " + words[i].to_s
    i += 1
  end
  puts text
  return text
end


#5. First refactored solution for sentence_maker

def sentence_maker(words)
  words[0].capitalize!
  return words.join(" ") + "."
end


#6. FINAL refactored solution for sentence_maker

def sentence_maker(words)
  p (words.join(" ") + ".").capitalize
end

# My test data for sentence_maker

sentence_maker (["all", "my", "socks", "are", "dirty"])
