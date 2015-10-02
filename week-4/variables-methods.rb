# Release 2

# Complete the two mini-challenges Pine created (outlined below) in your variables-methods.rb file in Sublime and run it through your terminal.

# 1. Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "Please enter your first name:"
first_name = gets.chomp
puts "Please enter your middle name:"
mid_name = gets.chomp
puts "Please enter your last name:"
last_name = gets.chomp
puts "Hello #{first_name} #{mid_name} #{last_name}."


# 2. Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "Please enter your favorite number:"
fav_num = gets.chomp.to_i
better_num = fav_num + 1
puts "If you like #{fav_num}, you will really #{better_num} as it's even bigger and better!"


# Release 6 - Reflection

# 1. How do you define a local variable?

#  You define a local variable by giving it a name that begins with either a lowercase letter or an underscore followed by the equal sign plus a value (e.g., string, number or array). Strings are placed inside of quotes, numbers are without quotes and arrays are comma separated inside of brackets. Local variables are defined inside code blocks (e.g., method or loop).

# 2. How do you define a method?

#  You define a method starting with the keyword 'def' followed by the name of the method, plus optionally any arguments to be received inside of parenthesis (and comma separated if there are more than one). Since each method is also a code block, it should finish up with the keyword 'end' on a subsequent line.

# 3. What is the difference between a local variable and a method?

#  A local variable is a variable with scope limited to the code block (e.g., method, or loop) in which it resides. This means it will not be recognized outside of the block in which it's defined and used.

#  Methods are re-usable blocks of code. They are given a name and can be called upon from other points in a program to perform one or more tasks at a time. Methods also have the ability to receive information (in the form of arguments) and to return information when they are executed.

# 4. How do you run a ruby program from the command line?

#  To run a ruby program from the command line you type 'ruby' followed by the file name (it should end in .rb).

# 5. How do you run an RSpec file from the command line?

#  To run an RSpec file from the command line you type 'rspec' followed by the file name (it should end in spec.rb).

# 6. What was confusing about this material? What made sense?

#  The basics that we have been reviewing so far all make sense to me. I don't think anything up to and including this challenge (4.3) has really confused me. However, I don't expect that to be the case for very much longer :-).

# Links to related challenges

# 4.3.1 Return a Formatted Address
# https://github.com/larsjx/phase-0/blob/master/week-4/address/my_solution.rb

# 4.3.2 Defining Math Methods
# https://github.com/larsjx/phase-0/blob/master/week-4/math/my_solution.rb
