=begin

# Die Class 1: Numeric

# I worked on this challenge: By myself
# I spent [] hours on this challenge.

SUMMARY

In this challenge you'll want to implement a basic Die class which can be initialized with some number of sides. You can then roll the die, which will return a random number. It should work like this:

    die = Die.new(6) # This creates a new die object with 6 sides
    die.sides # returns 6
    die.roll # returns a random number between 1 and 6

If we pass Die.new a number less than 1, we should raise an ArgumentError. This is done using the raise keyword. See the ArgumentError documentation for how to do this.


# 0. PSEUDOCODE

   INPUT:  1. Accept an integer argument for new class object called Die
           2. Accept the methods .sides and .roll

  OUTPUT:  1. Create a new instance of the Die class with the provided number of sides
           2. Display an ArgumentError if Die class is passed a number less than 1
           3. Display number of sides when .sides is called
           4. Display a random number between 1 and # of sides when .roll is called

  CREATE a new class object called Die
  VALIDATE the argument provided for # of sides (sides) is a number not less than 1
  RAISE an ArgumentError if the argument provided is less than 1
    TRAP occurrence of ArgumentError
    DISPLAY occurrence of ArgumentError
  INITIALIZE new object (Die) with an accepted argument representing # sides (sides)
  CREATE instance method (sides) to respond with number of sides when called
    DISPLAY number of sides (sides)
  CREATE instance method (roll) to respond with random number from 1 to # sides (sides)
    DISPLAY random number betwen 1 and number of sides (sides)

=end

# 1. INITIAL SOLUTION

class Die
  def initialize(sides)
   if sides < 1
    raise ArgumentError.new("ArgumentError")
   end
   @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    p rand(@sides)+1
  end
end


### MY PERSONAL DRIVER TEST

# dice = Die.new(gets.chomp.to_i)
# dice.sides
# dice.roll

# 3. REFACTORED SOLUTION

class Die
  def initialize(sides)
    raise ArgumentError.new if sides < 1
   @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides)+1
  end
end


=begin

# 4. REFLECTION

1. What is an ArgumentError and why would you use one?

    An argument error indicates that something was wrong with an expected argument. For example, you'll see an ArgumentError when the number or type of arguments expected is different from those supplied.

2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

    In this solution the only new method that I used was ArgumentError and since I didn't run into any challenges I guess we can call that a success.

3. What is a Ruby class?

    A Ruby class is a Class object that can receice messages and call methods. Classes are also the only objects that can create new instances and they follow Ruby's rules of single inheritence.

4. Why would you use a Ruby class?

    Ruby classes provide an organizational structure for related objects and methods. Using classes also gives us the option of creating instance variables, instance methods and class methods.

5. What is the difference between a local variable and an instance variable?

    A local variable is scope-limited to only retain its value within the method in which it was called. An instance variable is designed to give multiple objects (instances) different values. For example, if we used a local variable to set the color of coat, each coat would need it's own method to....

6. Where can an instance variable be used?

    ....

=end
