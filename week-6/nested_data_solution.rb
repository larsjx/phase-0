# I WORKED ON THIS WITH: RONNY EWANEK


# RELEASE 2: NESTED STRUCTURE GOLF

# Hole 1, Target element: "FORE"
array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ] ] ]

# # attempts:
#
p array[1][1][2][0]

# ...............................................................

# Hole 2, Target element: "congrats!"
hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # # attempts:
#
p hash[:outer][:inner]["almost"][3]

# ...............................................................

# # Hole 3, Target element: "finished"
nested_data = {array: ["array", {hash: "finished"}]}

# # # attempts:
#
p nested_data[:array][1][:hash]


# ================================================================================
=begin

RELEASE 3: ITERATE OVER NESTED STRUCTURES

PSEUDOCODE

 INPUT: 2 dimensional array of integers
OUTPUT: 2 dimensional array with 5 added to each original integer
-----------------------------------------------------------------
Iterate over the initial array
IF the element is an integer add 5 to it
determine if the element is an inner array
  if it is an array iterate over that inner array
   add 5 to each element of the inner array

=end

# INITIAL SOLUTION

number_array = [5, [10, 15], [20,25,30], 35]

number_array.collect! { |element|
  if element.kind_of?(Array)
    element.collect! {|inner| inner +=5}
  else
    element +=5
  end
}

# ...............................................................
# REFACTORED SOLUTION

number_array = [5, [10, 15], [20,25,30], 35]

number_array.collect! { |element|
  element.kind_of?(Array) ? element.collect! {|inner| inner +=5} : element +=5 }


# RELEASE 3 DRIVER CODE

p number_array

=begin
# ================================================================================
RELEASE 4: n-DIMENSIONAL ARRAYS (OPTIONAL)

PSEUDOCODE

 INPUT: 3 dimensional array of strings
OUTPUT: 3 dimensional array with suffix "ly" added to each original string
--------------------------------------------------------------------------
Iterate over the 1st level array
  FOR each element that is a string add "ly" to the end of it
  ELSE assume that element is an inner array
    Iterate over the 2nd level inner array
      FOR each element that is a string add "ly" to the end of it
      ELSE assume that element is another array
        Iterate over the 3rd level inner array
        add "ly" to the end of each string in the inner array

=end

# RELEASE 4: INITIAL SOLUTION (OPTIONAL)

startup_names = ["bit", "quick", ["find", "fast", ["optimize", "scope"]]]

startup_names.each_index {|idx|
  if startup_names[idx].kind_of?(String)
    startup_names[idx] = startup_names[idx]+"ly"
  else
    startup_names[idx].each_index {|idx2|
    if startup_names[idx][idx2].kind_of?(String)
      startup_names[idx][idx2] = startup_names[idx][idx2]+"ly"
    else
      startup_names[idx][idx2].each_index {|idx3|
      if startup_names[idx][idx2][idx3].kind_of?(String)
        startup_names[idx][idx2][idx3] = startup_names[idx][idx2][idx3]+"ly"
      end
      }
    end
    }
  end
}

# ...............................................................
# RELEASE 4: REFACTORED SOLUTION (OPTIONAL)
#
#  We haven't been able to come up with a good way to refactor this yet. But we'll
#  get back to it and try again if we have some extra time at the end of the week.

# RELEASE 4 : DRIVER CODE (OPTIONAL)

p startup_names

=begin
==================================================================================
RELEASE 5: REFLECT

1. What are some general rules you can apply to nested arrays?

    Nested arrays generally follow the same rules as 1-dimensional arrays. You can
    iterate over all of the elements in the entire array, or you can access any
    index individually when you know the structure. If you don't know the structure
    it is much more difficult to pick out and/or interact with individual elements.

2. What are some ways you can iterate over nested arrays?

    #each/#each_index, #collect/#map, and #select are few ways to iterate over
    nested arrays.

3. Did you find any good new methods to implement or did you re-use one you were
   already familiar with? What was it and why did you decide that was a good option?

    We didn't find any new methods to use for this challenge so we re-used #collect.
    We chose to do this for Release 3 because #collect has a bang option that made it
    easy to modify the original array.

    We chose to use #each_index on Release 4 (the optional challenge). #each_index
    seemed like a good method to use because we wanted to access the inner indexes.

=end

