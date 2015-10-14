=begin

CHALLENGE 6.3: BUILD A SIMPLE GUESSING GAME

I WORKED ON THIS CHALLENGE: Lars Johnson
I spent [#] hours on this challenge.


___________________________________________
SUMMARY

In this challenge you want to create a simple guessing game. Think in terms of when you
were 7 and asked your friends to identify the number you were thinking...

Your GuessingGame class should be initialized with an integer called answer.

Define an instance method GuessingGame#guess which takes an integer called guess as its
input. guess should return the symbol :high if the guess is larger than the answer,
:correct if the guess is equal to the answer and :low if the guess is lower than the answer

Define an instance method GuessingGame#solved? which returns true if the most recent guess
was correct and false otherwise.

In this case, we're asking you to use symbols for :low, :high, and :correct. This is
partly due to the way strings and symbols are stored in memory.

________________________________________________________________________________________
PSEUDOCODE

  INPUT: The game accepts an any integer (called answer) to get started
         An instance method (called GuessingGame#guess) accepts another integer
         The game also accepts an instance method (called GuessingGame#solved?)

 OUTPUT: The game returns one of three symbols based on the difference between
         (GuessingGame#guess) and (answer). These are :high, :correct, and :low

         The game also returns true or false when queried on the results of the
          most recent guess. A :correct answer returns true, otherwise false.
________________________________________________________________________________________

Create a new Ruby class object called GuessingGame
  Accept a single integer as input (via argument)

  Initialize the new class object (GuessingGame) with an integer argument (called answer)

  Create an instance method (guess) which takes an integer argument as input
    Subtract the value of (guess) from the value of (answer) and assign it to (result)
      IF (result) is positive return the symbol :high
      IF (result) is negative return the symbol :low
      ELSE return the symbol :correct

  Create an instance method (solved?) which takes (result) as an argument
    IF (result) equals the symbol :correct, return true
    ELSE return false

___________________________________________
INITIAL SOLUTION
=end

class GuessingGame
  attr_reader :answer
  def initialize(answer)
   @answer = answer
  end

  def guess(guess)
    @result = guess - answer
    @result == 0 ? (p :correct) : @result > 0 ? (p :high) : (p :low)
  end

  def solved?
    p @result == 0
  end
end


# __________________________________
# DRIVER TEST CODE

# answer = 5
# Game = GuessingGame.new(answer)
# Game.guess(3)
# Game.solved?



# Refactored Solution

class GuessingGame
  attr_reader :answer
  def initialize(answer)
   @answer = answer
  end

  def guess(guess)
    @result = guess - answer
    @result == 0 ? (p :correct) : @result > 0 ? (p :high) : (p :low)
  end

  def solved?
    p @result == 0
  end
end


=begin
# __________________________________
# REFLECTION

1. How do instance variables and methods represent the characteristics and behaviors
   (actions) of a real-world object?

2. When should you use instance variables? What do they do for you?

3. Explain how to use flow control. Did you have any trouble using it in this challenge?
   If so, what did you struggle with?

4. Why do you think this code requires you to return symbols? What are the benefits of
   using symbols?


=end
