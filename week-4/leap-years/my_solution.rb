# Leap Years

# I worked on this challenge [ Gabrielle Gustilo ].

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



# Your Solution Below