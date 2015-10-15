=begin
# PAIR CHALLENGE 6.7: CLASS WARFARE, VALIDATE A CREDIT CARD

# WE WORKED ON THIS CHALLENGE: Lars Johnson & Parminder Singh
# WE WORKED ON THIS FOR 4 HRS

_____________________________________________________________________
# PSEUDOCODE

  INPUT: The CreditCard class receives an integer as an argument
 OUTPUT: CreditCard#check_card returns either true or false

Create a new class called CreditCard
  Initialize class with the CreditCard number recieved as an argument
  Convert the number received into an array
  Determine if the received number is exactly 16 digits
    Raise an ArgumentError if not
  Define an instance variable (called @number)

Define a new method called check_card
  Create two empty arrays (called evens and odds)
  Split the array of credit card digits (@numbers) into 2 arrays
    Double the value of each @number with an even index (0-14)
      Put each doubled value into a new array (called evens)
    Convert all elements of the evens array into strings
      Split each element of the evens array into single strings
    Convert each evens array element into an integer
  Sum all even elements and add to the sum of all odd elements
  Call method valid_card

Define a method called valid_card
  If the sum of all even and odd elements divided by 10 equals 0, return true
  else return false

# _____________________________________________________________________
# INITIAL SOLUTION
=end

# class CreditCard
#   def initialize(number)
#       number = number.to_s.split("").map {|element| element.to_i}
#     if number.length != 16
#       raise ArgumentError.new("ARGUMENT ERROR!")
#     else
#     end
#     @number = number
#   end

#   def check_card
#     odds = []
#     evens = []
#     for i in 0..15
#       if i % 2 == 0
#         evens << @number[i] * 2
#       else
#         odds << @number[i]
#       end
#     end
#     evens = evens.map {|element| element.to_s.split("")}
#     evens = evens.flatten.map {|element| element.to_i}
#     evens = evens.reduce(:+)
#     odds = odds.reduce(:+)
#     sum = odds + evens
#     if sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# card = CreditCard.new (4563960122001999)
# card.check_card

# _____________________________________________________________________
# THIRD OF 3 REFACTORED SOLUTIONS (FINAL)

class CreditCard
  def initialize(number)
    number = number.to_s.split("").map { |element| element.to_i }
    raise ArgumentError.new("ARGUMENT ERROR!") if number.length != 16
    @number = number
  end

  def check_card
    @split_num = @number.partition.with_index { |element, index| index % 2 == 0 }
    @split_num[0].map! { |element| element * 2 }
    return valid_card
  end

  def valid_card
    @split_num[0].map! { |element| element.to_s.split("") }
    @split_num[0] = @split_num[0].flatten.map! { |element| element.to_i }
    p (@split_num[0].reduce(:+) + @split_num[1].reduce(:+)) % 10 == 0
  end
end

card = CreditCard.new (4563960122001999)
card.check_card

# _____________________________________________________________________
# SECOND OF 3 REFACTORED SOLUTIONS

# class CreditCard
#   def initialize(number)
#     number = number.to_s.split("").map {|element| element.to_i}
#     if number.length != 16 then raise ArgumentError.new("ARGUMENT ERROR!") end
#     @number = number
#   end

#   def check_card
#     @odds = []
#     @evens = []
#     for i in 0..15
#       i % 2 == 0 ? @evens << @number[i] * 2 : @odds << @number[i]
#     end
#     return valid_card
#   end

#   def valid_card
#     @evens.map! {|element| element.to_s.split("")}
#     @evens = @evens.flatten.map! {|element| element.to_i}
#     (@evens.reduce(:+) + @odds.reduce(:+)) % 10 == 0
#   end
# end

# card = CreditCard.new (4563960122001999)
# card.check_card

# _____________________________________________________________________
# FIRST OF 3 REFACTORED SOLUTIONS

# class CreditCard
#   def initialize(number)
#     number = number.to_s.split("").map {|element| element.to_i}
#     if number.length != 16 then raise ArgumentError.new("ARGUMENT ERROR!") end
#     @number = number
#   end

#   def check_card
#     odds = []
#     evens = []
#     for i in 0..15
#       i % 2 == 0 ? evens << @number[i] * 2 : odds << @number[i]
#     end
#     evens.map! {|element| element.to_s.split("")}
#     evens = evens.flatten.map! {|element| element.to_i}
#     (evens.reduce(:+) + odds.reduce(:+)) % 10 == 0
#   end
# end


# card = CreditCard.new (4563960122001999)
# card.check_card

=begin
# _____________________________________________________________________
# REFLECTION


1. What was the most difficult part of this challenge for you and your pair?

  Identifying new methods for refactoring was the most difficult part of
  this challenge.

2. What new methods did you find to help you when you refactored?

  The first and second time we refactored, we didn't find any new methods,
  but on the third attempt, I discovered #partition and changed our whole
  approach. Instead of working with 2 separate arrays, we switched to
  1 nested array with 2 arrays inside of it. This allowed us to eliminate
  a few variables and 2 unneccesary arrays. It also enabled us to iterate
  without using a for loop.

3. What concepts or learnings were you able to solidify in this challenge?

  This challenge helped me solidify the concept that integers must be made
  into strings before they can be split up into individual digits. It also
  helped me solidify my understanding of the #partition method.

=end
