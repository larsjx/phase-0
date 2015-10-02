# Concatenate Two Arrays

# I worked on this challenge: By myself


# My original solution using iteration

def array_concat(array_1, array_2)
  array_4 = []
  for i in 0...array_1.length
    array_4[i] = array_1[i]
    for x in 0...array_2.length
      array_4[(i+1)+x] = array_2[x]
    end
  end
  p array_4
end

array_concat([1,2,3],[4,5,6])

# My first refactored solution

def array_concat(array_1, array_2)
  p array_1.concat(array_2)
end

# Alternative refactored solution

def array_concat(array_1, array_2)
  p array_1 + array_2
end

