# Smallest Integer

# I worked on this challenge: By myself

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
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

# Refactored Solution

