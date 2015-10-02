# Largest Integer

# I worked on this challenge: By myself

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil


# My original solution using iteration

def largest_integer(list_of_nums)
  if list_of_nums.length == 0
    answer = nil
  else answer = list_of_nums[0]
  end
  for i in 0..list_of_nums.length-1
    if list_of_nums[i] > answer
      answer = list_of_nums[i]
    end
  end
  return answer
end


# My 1st refactored solution

def largest_integer(list_of_nums)
  p list_of_nums.sort.reverse![0]
end


# My FINAL refactored solution

def largest_integer(list_of_nums)
  list_of_nums.max
end


# My own test data

largest_integer([1,5,100,13,50,36])
