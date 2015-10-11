=begin
RESEARCH METHODS

WE WORKED ON THIS CHALLENGE TOGETHER: ACCOUNTABILITY GROUP 2

PERSON 1 = Lars
PERSON 2 = Aaron
PERSON 3 = Un
PERSON 4 = Ovi

=end

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

#########################################################
### PERSON 1: LARS JOHNSON
#########################################################
=begin


### PERSON 1: PSEUDOCODE

ARRAY FINDING SOLUTION PSEUDOCODE

   INPUT: An array of strings, plus a single letter
  OUTPUT: A new array of all the strings which contain that letter
  ----------------------------------------------------------------
  DEFINE a method that receives an array of strings, and a single letter
  CREATE a new, empty array
  ITERATE over each element of the received array
    CONVERT everything in the received array to lowercase
    DETERMINE if each converted string contains the single letter received as input
    ADD each string that contains the received letter to a new array
  OUTPUT the new array


HASH FINDING SOLUTION PSEUDOCOE

   INPUT: A hash of pet names (keys) and their ages (values), plus a positive integer
  OUTPUT: A new hash of pet names (keys) at that age (values)
  ----------------------------------------------------------------
  DEFINE a method that receives a hash containing pet names (keys) and their ages (values), and a positive integer
  CREATE a new, empty hash
  ITERATE over each key/value pair in the received hash
    COMPARE pets ages (value) with the received positive integer
    DETERMINE if the age of each pet matches the positive integer received as input
    ADD each key/value pair that matches the received value to the new hash
  OUTPUT the new hash

=end

### PERSON 1: ARRAY FINDING SOLUTIONS

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


### PERSON 1: HASH FINDING SOLUTION

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

=begin

PERSON 1: IDENTIFY AND DESCRIBE THE RUBY METHOD(S) YOU USED

  After trying several methods that didn't work, I wound up using .each and .map to iterate over my data structures and return an array with the correct values. Both .each and .map cycle through the data running a specified block of code against each element or key/value pair. I used the method .to_include? in order to find the appropriate letter in each array and simply evaluated each value in the hash to determine whether or not it matched the thing_to_find. I really wanted to do this without using .each or .map so I will keep looking for other methods that might work well in these situations.

PERSON 1: TEACH YOUR ACCOUNTABILITY GROUP HOW TO USE THE METHODS

  .each and .map work similarly in that you start by specifying the name of the array or hashmap followed by the method name (.each or .map), followed by an open curly bracket, a pipe, a variable (or 2 comma separated variables if you want key and value from a hash), and a closing pipe. Next you specify a code block that you want to run against the data structure followed by a closing curly bracket. See above for several examples.

PERSON 1: SHARE ANY TRICKS YOU USED TO FIND AND DECIPHER THE RUBY DOCS

  I *think* I am understanding the Ruby docs, but I don't really have any tricks. I first scan each doc quickly and/or search it for keywords that might be related to my goals, Once I have narrowed things down to a few methods that *might* work in my situaton, I read the descriptions of those methods much more carefully to ensure that I understand the syntax.


#########################################################
PERSON 2: Aaron Tsai
#########################################################
=end

# PERSON 2: ARRAY MODIFICATION METHOD

def my_array_modification_method!(source, thing_to_modify)

  source.map! {|x|
    if x.is_a?(Integer)
      x+=thing_to_modify
    else
      x
    end
  }
  return source

end


# PERSON 2: HASH MODIFICATION METHOD

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] += thing_to_modify}
  return source
end

=begin

PERSON 2: IDENTIFY AND DESCRIBE THE RUBY METHOD(S) YOU USED

  I used .each to iterate through my hash and to add each of the value by the integer passed on by the second argument For array I used map! to iterate through array destructively. I learned that by using .each here, the array returned at the end will remain as the initial array. Therefore I chose map! to make the destructive modification to my array. I also used .is_a (Integer) to check if the element is a integer, if so, I add the value up by the argument provided.


#########################################################
PERSON 3: Un Choi
#########################################################
=end

# PERSON 3: ARRAY SORTING METHOD

def my_array_sorting_method(i_want_pets)
  i_want_pets.sort_by { |element| element.to_s}
end


# PERSON 3: HASH SORTING METHOD

def my_hash_sorting_method(my_family_pets_ages)
  my_family_pets_ages.sort_by { |key, value| value }
end

=begin


PERSON 3: IDENTIFY AND DESCRIBE THE RUBY METHOD(S) YOU USED

  I used the sort_by method for both the array and the hash. And since the description of Person 3 indicated that the person did not want to modifiy the data but wanted to see what sorting the data would look like, the method is not destructive.

  For the array, the sort_by, insted of sort, worked well, since it contains numbers and text as elements. The sort_by method allows the type of sorting to be executed By. So, by setting all the elements as string, then sorting could be executed. The sort_by meethod also worked for the hash, since it allows to set the conditions of the sort to values, rather than keys.


#########################################################
PERSON 4: Ovi Calvo
#########################################################


### PERSON 4: PSEUDOCODE

  INPUT: An array and a letter
  OUTPUT: An array minus any strings that contain that letter

  Sometimes you no longer need data that matches something.
  Create a my_array_deletion_method! that takes an array and a letter,
  and deletes all the strings that contain that letter.
  This should modify the original because we now permanently hate that letter.

  EXAMPLE:
  my_array_deletion_method!(i_want_pets, "a")
  #=> ["I", 3, "pets", "but", "only", 2]

=end

### PERSON 4: ARRAY DELETION SOLUTION

def my_array_deletion_method!(source, thing_to_delete)
 source.each do |items|
   if items.to_s.downcase.include?(thing_to_delete)
     source.delete(items)
   end
 end
 source
end

### PERSON 4: HASH DELETION SOLUTION

def my_hash_deletion_method!(source, thing_to_delete)
 source.each do |key, value|
   if key == thing_to_delete
     source.delete(key)
   end
 end
 source
end

=begin

PERSON 4: IDENTIFY AND DESCRIBE THE RUBY METHOD(S) YOU USED

  each: this method iterates through an array or hash; also stated, this method calls a given code block for 'each' element in that block, and passes that element as a parameter to be evaluated.

  downcase: this methods returns a copy of a string with all the uppercase letters replaced as lowercase ones.

  include?: this method returns 'true' if the given object is 'included' in the parameter that is being examined. returns 'false' otherwise.

  to_s: takes an object and returns that as its string equivalent.

  delete: this methods deletes all times from the parameter in question that are equal ("==") to the object. this will also return the last deleted item or 'nil' if no matching item is found.


PERSON 4: TEACH YOUR ACCOUNTABILITY GROUP HOW TO USE THE METHODS

  The first method I devised was a destructive one called 'my_array_deletion_method!'. This method works by changing the 'source' (the array which is taken as an argument). Using the '.each' method to iterate through the source array, to scan the various 'items' (in the parallel line "pipes") to check if the 'items' includes (using the '.include?' method) the thing we are wishing to delete. In this case the 'thing_to_delete' is a letter string taken as an argument in this method. If the 'items' in the array have the letter we are trying to get rid of, I called the '.delete' method to nix it from the array. The method, being destructive has a bash (!), so the array object is now permanently revised.

  The second method I made was the destructive 'my_hash_deletion_method!'; this likewise was very similar to the logic of deleting an item permanently from an array using a bash (!), only this time the source we are examining is a hash, with respective key-value pairs. Once again using the '.each' method to iterate through the source hash, we evaluate the |key, value| of that hash to check if the 'thing_to_delete' paramater equates to a key in our hash. If there is a match and the key we wish to delete is found, the '.delete' method is performed to take it out of the source hash permanently.


PERSON 4: SHARE ANY TRICKS YOU USED TO FIND AND DECIPHER THE RUBY DOCS

  The only real suggestion I have for RubyDocs usage is this: If you are going shopping, it's easier to find something when you know what you are looking for. RubyDocs is a very well organized forum, and if you are looking for help on the syntax of array methods, you are going to find that stuff expectedly in the 'array' section. Also, the method names are often logically poised to be what you would expect them to do. For example, deleting and item from an array or hash can be done with the ".delete" method. Simple!

=end



#########################################################
#### ONLY 4 PEOPLE PARTICIPATED IN THIS GROUP ASSIGNMENT
#########################################################

# PERSON 5 -- NOT COMPLETED

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