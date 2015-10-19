# WEEK 6 BONUS CHALLENGE: REVIEW AND REFACTOR PAD AN ARRAY
# I WORKED ON THIS CHALLENGE: Lars Johnson

################################################################
# FIRST PERSON'S REFACTORED SOLUTION I LIKED
#    WHAT I LEARNED FROM THIS SOLUTION
#    I learned about the #clone method from this solution.

#non-destructive
# def pad(array, integer, arg = nil )
#   new_array = array.clone
#   if array.length < integer
#     (integer - array.length).times do |i|
#       new_array << arg
#     end
#   end
#   return new_array
# end


#destructive
# def pad!(array, integer, arg = nil )
#   if array.length < integer
#     (integer - array.length).times do |i|
#       array << arg
#     end
#   end
#   return array
# end


################################################################
# SECOND PERSON'S REFACTORED SOLUTION I LIKED
#    WHAT I LEARNED FROM THIS SOLUTION
#    I Learned the #fill and #insert methods from this solution.
#    I also learned how to use *Array.new to create multiple values.

#non-destructive
# def pad(array, min_size, value = nil) #non destructive
#   if array.length > min_size
#     Array.new(array)
#   else
#     array.clone.fill(value, array.length...min_size)
#   end
# end

#destructive
# def pad!(array, min_size, value = nil)
#   if array.length > min_size || min_size == 0
#     array
#   else
#     array.insert(0, *Array.new([0, min_size-array.length].max, value))
#   end
# end


################################################################
# MY ORIGINAL SOLUTION

#non-destructive
# def pad(array, min_size, value = nil)
#   new_array = []
#   for x in 0..array.length-1
#     new_array[x] = array[x]
#   end
#   if array.length >= min_size
#     return new_array
#   elsif min_size == 0
#     return new_array
#   else
#     for i in 1..(min_size - array.length)
#       new_array << value
#     end
#   return new_array
#   end
# end

#destructive
# def pad!(array, min_size, value = nil)
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


################################################################
# MY REFACTORED SOLUTION

#non-destructive

# Accept array, min_size and value as arguments for pad. Default pad value to nil
# IF array length >= min size then return new array with same values
# ELSE clone array and fill the new array with pad values at the end

def pad(array, min_size, value = nil)
  array.length >= min_size ? Array.new(array) : array.clone.fill(value, array.length...min_size)
end

# #destructive
# Accept array, min_size and value as arguments for pad. Default pad value to nil
# IF array length >= min size return the original array
# ELSE return the original array padded with values at the end

def pad!(array, min_size, value = nil)
 array.length >= min_size ? array : min_size-array.length.times do array << value
  return array
  end
end


# MY DRIVER TEST CODE

pad(["1","2","3"], 5, "orange")
pad!(["1","2","3"], 6, "apple")


# 5. Reflection
