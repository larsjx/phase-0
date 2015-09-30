# Leap Years

# I worked on this challenge with Gabrielle Gustilo

# Create a method leap_year? that accepts an integer representing a year as input.

# It should return true if the year input is a leap year and false otherwise.

# Your Solution Below

def leap_year?(year)

if year % 4 == 0 && year % 100 != 0
  return true
end

if year % 4 == 0
  if year % 100 == 0
    if year % 400 == 0
      return true
    else return false
    end
  else return false
  end
else return false
end

end
