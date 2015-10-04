# Longest String

# I worked on this challenge: By myself

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# My original solution using iteration

def longest_string(list_of_words)
  if list_of_words == []
    answer = nil
  elsif list_of_words == ['']
    answer = ''
  else chars = list_of_words[0].length
    for i in 0..list_of_words.length-1
      if list_of_words[i].length >= chars
        chars = list_of_words[i].length
        answer = list_of_words[i]
      end
    end
  end
  p answer
end


# My first refactored solution

def longest_string(list_of_words)
  p list_of_words.sort! { |x, y| y.length <=> x.length }[0]
end


# My FINAL refactored solution

def longest_string(list_of_words)
  p list_of_words.max { |x, y| x.length <=> y.length }
end

# My own test data

longest_string(["gate", "let", "be", "caterpillar", "fellow", "cookery"])

