
=begin

WEEK 6 BONUS CHALLENGE 2: IMPLEMENT A RPN CALCULATOR
I WORKED ON THIS CHALLENGE: Lars Johnson

##### PSEUDOCODE

  INPUT: A string of space separated operands and operators as an argument
 OUTPUT: Return calculated result of RPN solution

Accept a single string as an argument (called expression)
Split the string (expression) into an array of elements (@expression)
Convert any numbers as strings (e.g., "3") into integers within a new array (@list)
Iterate over the array (@list) and separate integers from operators ("*", "+", "-"")
  IF element is an integer push it onto the end of a new array (called @stack)
  ELSE perform the appropriate math (*, +, -) on last 2 elements of (@stack) array
    Remove last 2 elements of (@stack) array
    Push result of mathematical operation onto the end of (@stack array)


################################################## INITIAL SOLUTION

class RPNCalculator

  attr_reader :number

  def evaluate(number)
    number = number.to_s.split(" ").map { |element| element }
    @number = number
    @list = @number.map! { |element| element = Integer(element) rescue element}
    return do_math
  end

  def do_math
    y = 0
    @stack = []
    @list.each_index { |index|
      if @list[index].kind_of?(Integer)
        @stack << @list[index]
      else
        case @list[index]
          when "+"
            y = @stack[-2] + @stack[-1]
            @stack.pop
            @stack.pop
            @stack << y
          when "-"
            y = @stack[-2] - @stack[-1]
            @stack.pop
            @stack.pop
            @stack << y
          when "*"
            y = @stack[-2] * @stack[-1]
            @stack.pop
            @stack.pop
            @stack << y
        end
      end
      }
      p @stack[0]
  end

################################################## REFACTORED SOLUTION
=end

class RPNCalculator

  def evaluate(expression)
    @stack = Array.new
    @expression = expression.to_s.split(" ").map { |element| element }
    @list = @expression.map! { |element| element = Integer(element) rescue element}
    @list.each_index { |index|
      @list[index].kind_of?(Integer) ? @stack << @list[index] : case @list[index]
        when "+"
          @value = @stack[-2] + @stack[-1]
          stack_it
        when "-"
          @value = @stack[-2] - @stack[-1]
          stack_it
        when "*"
          @value = @stack[-2] * @stack[-1]
          stack_it
      end
    }
    p @stack[0]
  end

  def stack_it
    2.times { @stack.pop }
    @stack << @value
  end

end

################################################## DRIVER TEST CODE

test_1 = RPNCalculator.new
test_1.evaluate("70 10 4 + 5 * -")

test_2 = RPNCalculator.new
test_2.evaluate("150 10 4 + 5 * -")

