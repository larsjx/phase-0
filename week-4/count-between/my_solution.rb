# Count Between

# I worked on this challenge: By myself

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# My original solution using iteration

def count_between(list_of_integers, lower_bound, upper_bound)
  total = 0
  if list_of_integers == [] || upper_bound < lower_bound
  else for i in 0...list_of_integers.length
          if list_of_integers[i] >= lower_bound
            if list_of_integers[i] <= upper_bound
                total = total + 1
            end
          end
        end
  end
  p total
end

# My refactored solution

def count_between(list_of_integers, lower_bound, upper_bound)
  total = 0
  list_of_integers.each { |x|
    if x >= lower_bound && x <= upper_bound
      total += 1
    end
  }
  p total
end

# count_between([1,3,5,10,14,100,28,56], 3, 57)

