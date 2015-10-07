# Pad an Array

# I worked on this challenge (Jon Chen and Lars Johnson)

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array, minimum # of elements, optional pad value
# What is the output? Array with length equal to minimum # of elements with pad values if needed
# What are the steps needed to solve the problem?
# DEFINE a destructive method that accepts input above defaulting optional padding to nil
  # IF array length is greater than minimum size, output array
  # ELSE loop
    # Add padding for difference between array length and min size
# Output an array with equal length equal to minimum # of elements with pad values if needed


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive

#   if array.length >= min_size
#     return array
#   elsif min_size == 0
#     return array
#   else
#     for i in 1..(min_size - array.length) do
#       array << value
#     end

#     return array

#   end

# end


# def pad(array, min_size, value = nil) #non-destructive

#   new_array = []
#   for x in 0..array.length-1
#     new_array[x] = array[x]
#   end
#   p new_array.object_id == array.object_id

#   if array.length >= min_size
#     return new_array
#   elsif min_size == 0
#     return new_array
#   else
#     for i in 1..(min_size - array.length)
#       new_array << value
#     end

#     return new_array

#   end
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    for i in 1..(min_size - array.length)
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  for x in 0...array.length
    new_array[x] = array[x]
  end
  if array.length < min_size
    # new_array += (new_array.length...min_size).map { value }
    for i in 1..(min_size - array.length)
      new_array << value
    end
  end
  return new_array
end


# 4. Reflection
