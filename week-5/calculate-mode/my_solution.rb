# Calculate the mode Pairing Challenge

# I worked on this challenge with: Kyle Smith

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. PSEUDOCODE
=begin

INPUT: An array of numbers, letters, or words.
OUTPUT: New array containing the most frequent value(s) from the provided array.

INITIAL PSEUDOCODE

1. Define a method to capture the input (array)
2. Identify which values occur most frequently
3. Return the most frequent value(s) as a new array

-----

POST-MORTEM PSEUDOCODE

1. DEFINE a method (mode) to capture the provided input (list)
2. CREATE a new, empty hashmap that will take (list) elements as keys
3. COUNT # of times each element occurs
4.   Store # of times (as values) with the element itself (as keys) in hashmap
5. IDENTIFY the highest value in hashmap
6. ITERATE over hashmap and check for more than one highest value
7.   For each highest values, add that key to a new array (result)
8. RETURN result (output resulting array of highest value elements)

=end

# 1. INITIAL SOLUTION

def mode(list)
  max_array = Array.new
  our_hash = Hash.new
  for i in 0...list.length
    number_items = list.count(list[i])
    our_hash = our_hash.merge ({list[i] => number_items})
    max_array = our_hash.max_by {|k,v| v}
    result = Array.new
    our_hash.each {|k,v|
      if v == max_array[1]
        result.push(k)
      end
    }
  end
  p result
end


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


# ==================================
# TEST DATA FROM CHALLENGE SUMMARY

mode([1,2,3,3])
mode([4,5,0,0])
mode([1.5, -1, 1, 1.5])
mode([1,1,2,2])
mode([1,2,3])
mode(["who", "what", "where", "who"])
mode(["who", "what", "where", "who", "who"])  # We added this example


# 4. REFLECTION
=begin

1. Which data structure did you and your pair decide to implement and why?

    We decided to use a hash instead of an array, because we were able to assign each element of the original array to a key, and assign the number of it's occurrences to that value. This way we could identify the highest value (or values in the case of a tie) to determine the mode and then push that value's key into a new empty array containing the answer. If we had chosen to use an array instead, it would have been necessary to reference the relationship between provided array elements and their occurrences in addition to the array itself.

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

    I was more successful in the last challenge at breaking the problem down into implementable pseudocode. My partner on this challenge was reluctant to spend any significant time on pseudocode and I didn't push the issue hard enough. I believe this may have contributed to us spending more time than necessary writing and testing our code.

    After we completed the challenge with passing code, I went back on my own to revisit and remake our pseudocode for the extra practice. Next time this happens, I will be more assertive to ensure we spend more time working on our pseudocode.

3. What issues/successes did you run into when translating your pseudocode to code?

    As stated above, our original pseudocode lacked sufficient detail so it was difficult to translate directly into code. As a result I believe we may have spent too much time experimenting and researching without clear direction.

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

    We used a for loop, .count, .max, and .each to iterate through our content. During refactoring, we saw that we could shorten our solution dramatically using .values, but since we were not sure that we were allowed to use that method, we decided not to use it.

    I made a copy of our solution to continue working on it's refactoring when I have time.


=end