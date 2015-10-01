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