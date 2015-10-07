# Calculate the mode Pairing Challenge

# I worked on this challenge with: Kyle Smith

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. PSEUDOCODE

# What is the input? an array
# What is the output? the mode of the array, as an array and if there are multiple modes, return them all
# What are the steps needed to solve the problem?
#Step 1: Define a method to capture the arguments(array)
#Step 2: Identify which entries occur most often
#Step 3: Return the entries as an array


# 1. INITIAL SOLUTION


# def mode(list)
#   max_array = Array.new
#   our_hash = Hash.new
#   for i in 0...list.length
#     number_items = list.count(list[i])
#     our_hash = our_hash.merge ({list[i] => number_items})
#     max_array = our_hash.max_by {|k,v| v}
#     result = Array.new
#     our_hash.each {|k,v|
#       if v == max_array[1]
#         result.push(k)
#       end
#     }
#   end
#   p result
# end

# mode([1,2,3,3])
# mode([4,5,0,0])
# mode([1.5, -1, 1, 1.5])
# mode([1,1,2,2])
# mode([1,2,3])
# mode(["who", "what", "where", "who"])


# 3. REFACTORED SOLUTION

def mode(list)
  our_hash = Hash.new
  for i in 0...list.length
    result = Array.new
    number_items = list.count(list[i])      # Counts freq of items (for each item)
    our_hash = our_hash.merge ({list[i] => number_items}) # Adds item & freq to hash
    max_array = our_hash.max_by {|k,v| v}                 # Add max value to max_array
    our_hash.each {|k,v|                                  # Iterate through key/values
      if v == max_array[1]                                # If value = overall max value
        result.push(k)                                    # Push to result array
      end
    }
  end
  p result
end

mode([1,2,3,3])
mode([4,5,0,0])
mode([1.5, -1, 1, 1.5])
mode([1,1,2,2])
mode([1,2,3])
mode(["who", "what", "where", "who"])


# 4. REFLECTION
=begin

1. Which data structure did you and your pair decide to implement and why?

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

3. What issues/successes did you run into when translating your pseudocode to code?

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

=end