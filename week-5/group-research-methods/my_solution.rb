# Research Methods

# We worked on this challenge: Lars Johnson, Aaron Tsai, Douglas Tsui
# Lars = Person 1, Aaron = Person 2, Douglas = Person 3
# I spent 2 hours on this challenge.


i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# PERSON 1's ARRAY FINDING SOLUTIONS

def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.each {|element|
    if element.to_s.downcase.include? thing_to_find
      answer << element
    end
  }
  p answer
end

def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.map { |element|
    if element.to_s.include? thing_to_find
      answer << element
    end
    }
  p answer
end

my_array_finding_method(i_want_pets, "t")


# PERSON 1's HASH FINDING SOLUTION

def my_hash_finding_method(source, thing_to_find)
    answer = Array.new
    source.each {|k,v|
      if v == thing_to_find
        answer << k
      end
    }
    p answer
end

def my_hash_finding_method(source, thing_to_find)
    answer = Array.new
    source.each {|k,v| if v == thing_to_find then answer << k end }
    p answer
end


# PERSON 1: Identify and describe the Ruby method(s) you implemented.
#
#  After trying several methods that didn't work, I wound up using .each and .map to iterate over my data structures and return an array with the correct values. Both .each and .map cycle through the data running a specified block of code against each element or key/value pair. I used the method .to_include? in order to find the appropriate letter in each array and simply evalueated each value in the hash to determine whether or not it matched the thing_to_find. I really wanted to do this without using .each or .map so I will keep looking for other methods that might work well in these situations.
#
# Teach your accountability group how to use the methods
#
#  .each and .map work similarly in that you start by specifying the name of the array or hashmap followed by the method name (.each or .map), followed by an open curly bracket, a pipe, a variable (or 2 comma separated variables if you want key and value from a hash), and a closing pipe. Next you specify a code block that you want to run against the data structure followed by a closing curly bracket. See above for several examples.
#
# Share any tricks you used to find and decipher the Ruby Docs
#
#  I *think* I am understanding the Ruby docs, but I don't really have any tricks. I first scan each doc quickly and/or search it for keywords that might be related to my goals, Once I have narrowed things down to a few methods that *might* work in my situaton, I read the descriptions of those methods much more carefully to ensure that I understand the syntax.
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#