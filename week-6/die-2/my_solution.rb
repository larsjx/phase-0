=begin

DIE CLASS 2: ARBITRARY SYMBOLS

WORKDED ON THIS CHALLENGE: Lars Johnson
  I SPENT THIS MANY HOURS: XX

SUMMARY

In this challenge you will create a more exciting Die class that takes an
array of strings as its input. When Die#roll is called, it randomly returns
one of these strings. If Die.new is passed an empty array, it should raise
an ArgumentError. It should work like this:

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides # still returns the number of sides, in this case 6
die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly


To reiterate, in the previous exercise you passed in a number of sides,
sides, and the labels were assumed to be the integers 1..sides. Now you're
passing in a list of arbitrary labels.

____________________________________
PSEUDOCODE

  INPUT: The die accepts an any number of strings in an array as input
 OUTPUT: Depending on what's called, the die outputs either the number
         of strings in the array or a random string from the array
----------------------------------------------------------------------
Create a new Ruby class object called Die
  Accept any number of strings in an array as input (via argument)

  Initialize new class object (Die) with number of strings representing number of sides
    Deterimine if the number of strings provided is less than 1
      Raise an ArgumentError if the number of strings provided is less than 1

  Create a method (sides) to respond with number of strings when called
    Display number of strings (sides) when called

  Create a method (roll) to respond with a random string from the provided array
    Generate random index between 0 and number of strings provided minus 1
      Display a string from the provided array at random index

____________________________________
INITIAL SOLUTION
=end

#class Die
#  def initialize(labels)
#    if labels.length < 1
#    raise ArgumentError.new("ArgumentError")
#   end
#   @sides = labels.length
#   @labels = labels
#  end

#  attr_reader :sides

#  def roll
#    sides > 1 ? (p @labels[rand(sides)]) : (p @labels[0])
#  end
#end

# __________________________________
# Refactored Solution

class Die

  attr_reader :sides

  def initialize(labels)
    raise ArgumentError.new("ARGUMENT ERROR!") if labels.length < 1
   @sides = labels.length
   @labels = labels
  end

  def roll
    sides > 1 ? (@labels[rand(sides)]) : (@labels[0])
  end
end

# __________________________________
# DRIVER TESTING

# labels = ["a"]
labels = %w(a b c d e f g)
die = Die.new(labels)
p die.sides
p die.roll

=begin

____________________________________
REFLECTION

1. What were the main differences between this die class and the last one you created
   in terms of implementation? Did you need to change much logic to get this to work?

   The two main differences are the change to label.length as the number of sides and
   the creation of an @labels instance variable. The only logic I changed was to add
   an ELSE statement that returns the only label (index zero) for a one sided die.

2. What does this exercise teach you about making code that is easily changeable or
   modifiable?

   This exercise reinforces that easily modifiable code is of great because it can
   be a huge time and money saver in the development cycle. It's also easier to read.

3. What new methods did you learn when working on this challenge, if any?

    I used the reader method #attr_reader for the first time in this challenge, but
    I should have used it in last week's challenge too and forgot.

4. What concepts about classes were you able to solidify in this challenge?

    This challenge reinforced that Ruby classes are like a blueprint for making new
    objects. Classes can have properties which are assigned to variables such as the
    number of sides and labels in this exercise and their objects can have behaviors,
    such as the rolling of our die. These behaviors are performed by method calls.

=end