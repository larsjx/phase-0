# Analyze the Errors

# I worked on this challenge: By myself
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."


# 1. What is the name of the file with the error?
#
#  The file with the error is: errors.rb
#
# 2. What is the line number where the error occurs?
#
#  The error occurs on line # 8
#
# 3. What is the type of error message?
#
#  The error type is a syntax error
#
# 4. What additional information does the interpreter provide about this type of error?
#
#  "unexpected '=', exepcting end-of-input"
#
# 5. Where is the error in the code?
#
#  The error is between the equal sign and the variable cartmans_phrase.
#
# 6. Why did the interpreter give you this error?
#
#  The interpreter gave us this error because ruby expects variables to be listed before the equal sign and their values.

# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#
#  The file with the error is: errors.rb
#
# 2. What is the line number where the error occurs?
#
#  The error occurs on line # 206
#
# 3. What is the type of error message?
#
#  The error type is a syntax error
#
# 4. What additional information does the interpreter provide about this type of error?
#
#  "unexpected end-of-input, expecting keyword_end"
#
# 5. Where is the error in the code?
#
#  The error is after the word comment.
#
# 6. Why did the interpreter give you this error?
#
#  The interpreter gave us this error because ruby expects the keyword end for the method cartman_hates.

# --- error -------------------------------------------------------

# def south_park
# end

# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 71
#
# 2. What is the type of error message?
#
#  The error type is a Name error
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "undefined local variable or method 'south_park' for main:object (nameError)"
#
# 4. Where is the error in the code?
#
# The error is in the variable or method name "south_park"
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because ruby was not expecting to encounter the variable or method name "south_park"

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 96
#
# 2. What is the type of error message?
#
#  The error type is NoMethodError
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "undefined method 'cartman' for main:object"
#
# 4. Where is the error in the code?
#
# The error is in the method name "south_park"
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because ruby was not expecting to encounter the undefined method "cartman()"

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase

# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 121 and 125
#
# 2. What is the type of error message?
#
#  The error type is ArgumentError
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "cartmans_phrase: wrong number of arguments (1 for 0)"
#
# 4. Where is the error in the code?
#
# The error is on line 125 with the argument "I hate Kyle"
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because the method cartmans_phrase was not expecting any arguments

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says "#$&@"

# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 150 and 154
#
# 2. What is the type of error message?
#
#  The error type is ArgumentError
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "cartman_says: wrong number of arguments (0 for 1)"
#
# 4. Where is the error in the code?
#
# The error is on line 150 with the argument "offensive_message"
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because the method cartman_says is expecting one argument but none were provided in the method call on 154

# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'John')

# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 181 and 185
#
# 2. What is the type of error message?
#
#  The error type is ArgumentError
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "cartmans_lie: wrong number of arguments (1 for 2)"
#
# 4. Where is the error in the code?
#
# The error is on line 181 with the two argument "lie" and "name"
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because the method cartmans_lie is expecting two argument but only one is provided in the method call on 185

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 210
#
# 2. What is the type of error message?
#
#  The error type is TypeError
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "String can't be coerced into Fixnum"
#
# 4. Where is the error in the code?
#
# The error is on line 210 in the attempt to multiply 5 by the string "Respect my authoritay!"
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because the string "Respect my authoritay!" cannot be multiplied with 5 (in that order, if the 5 and the string were reversed it would work)

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 235
#
# 2. What is the type of error message?
#
#  The error type is ZeroDivisionError
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "divided by 0"
#
# 4. Where is the error in the code?
#
# The error is with the "/" operator on line 235 in the attempt to divide 20 by 0
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because you can't divide by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
#  The error occurs on line # 261
#
# 2. What is the type of error message?
#
#  The error type is LoadError
#
# 3. What additional information does the interpreter provide about this type of error?
#
#  "require_relative': cannot load such file -- /Users/larsjx/DBC/phase-0/week-4/cartmans_essay.md"
#
# 4. Where is the error in the code?
#
# The error is with the filename on line 261
#
# 5. Why did the interpreter give you this error?
#
# The interpreter gave us this error because it can't find the file "cartmans_essay.md"
#
# end

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#
#
# 1. Which error was the most difficult to read?
#
#  None of these errors were difficult to read.
#
# 2. How did you figure out what the issue with the error was?
#
#  To figure out the issue with these errors I first parsed the error messages and then examined the code for whatever was described in the error message.
#
# 3. Were you able to determine why each error message happened based on the code?
#
# Yes. I was able to determine why each error message occured based on the code.
#
# 4. When you encounter errors in your future code, what process will you follow to help you debug?
#
# When I encounter errors going forward, I will do my best to parse the code, determine the type of error and line number(s) effected. Then I will examine the code and try to resolve it.
#