# Smallest Integer

# I worked on this challenge: By myself

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil


# My original solution using iteration

def smallest_integer(list_of_nums)
  if list_of_nums.length == 0
    answer = nil
  else answer = list_of_nums[0]
  end
  for i in 0..list_of_nums.length-1
    if list_of_nums[i] < answer
      answer = list_of_nums[i]
    end
  end
  return answer
end


# My 1st refactored solution

def smallest_integer(list_of_nums)
  list_of_nums.sort![0]
end


# My FINAL refactored solution

def smallest_integer(list_of_nums)
  list_of_nums.min
end


# My own test data

smallest_integer([1,5,10,13,50,36])