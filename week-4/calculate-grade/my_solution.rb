# Calculate a Grade

# I worked on this challenge with: Lars Johnson.


# Your Solution Below

# Create a method get_grade that accepts an average in the class and returns the letter grade as a String.

def get_grade(average)
	
	case 
	when average >= 90
		return "A"

	when average >= 80
		return "B"
	
	when average >= 70
		return "C"
	
	when average >= 60
		return "D"

	when average >= 50
		return "F"
	end
	
end

# It should only return one of 'A', 'B', 'C', 'D', and 'F'. Don't worry about + and - grades.

# For example,

# get_grade(89) # => returns "B", *not* "B+"
# get_grade(70) # => returns "C"


