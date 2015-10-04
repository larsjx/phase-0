# Shortest String

# I worked on this challenge: By myself

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# My original solution using iteration

def shortest_string(list_of_words)
  if list_of_words == []
    answer = nil
  elsif list_of_words == ['']
    answer = ''
  else chars = list_of_words[0].length
    for i in 0..list_of_words.length-1
      if list_of_words[i].length <= chars
        chars = list_of_words[i].length
        answer = list_of_words[i]
      end
    end
  end
  p answer
end


# My first refactored solution

def shortest_string(list_of_words)
  p list_of_words.sort! { |x, y| x.length <=> y.length }[0]
end


# My FINAL refactored solution

def shortest_string(list_of_words)
  p list_of_words.min { |x, y| x.length <=> y.length }
end


# My own test data

shortest_string(["gate", "let", "ya", "caterpillar", "fellow", "cookery"])

