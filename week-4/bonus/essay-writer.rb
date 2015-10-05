### Pseudocode
#
# Input:   User selects a 1 of 3 essays
# Output:  Essay_writer will output a brief essay comprised of 4 elements and proper use of pronouns
#
# Define 3 separate: titles, dates, people, and content
# LOOP IF user selects number greater than 4 or less than 1
# Ask the user to pick from 1 of 3 essays and assign selction to X
# END
# Select essay components based on index of X-1 (title, date, and person and content)
# Select correct pronouns based on person's name
# Combine and output essay elements using correct pronouns and last name where possible
#
###

title = ["The First Wizard", "The Second Wizard", "The Third Wizard"]
date = [1000, 1200, 1400]
person = ["Galron Oldtree", "Josephine Pip", "Scrupulous Crow"]
content = ["was the very first wizard of Breen. Prior to Galron there were only pretend wizards and none of them were any good at pretending to be wizards. In fact, there wasn't a single soul in all of Breen that had been impressed by their fake wizardry. All of that changed with Oldtree's appearance.", "was only the second wizard of Breen. Prior to Pip there were only the pretenders and Galron Oldtree. In fact, one could even say Oldtree was a bit of underachiever. Most of his magic involved doves and very few of them would even fly. Pip on the other hand, was known for levitating large pumpkins and very few of them fell.", "was the third and final wizard of Breen. Following Pip, Oldtree, and the pretend wizards required a unique blend of moxy and mirth. Fortunately he had cart loads of mirth and his moxy was never in doubt."]

def essay_writer(title, person, date, content)
  if person == "Josephine Pip"
    pronoun_1 = "She"
    pronoun_2 = "her"
  else
    pronoun_1 = "He"
    pronoun_2 = "him"
  end

  puts person  + " " + "was an important person in " + date.to_s + ". " + pronoun_1 + " did a lot. I want to learn more about " + pronoun_2 + ". In '" + title + "', " + person.split(" ").to_a.last + " " + content + " " + person.split(" ").to_a.last + "'s contribution is important."
  puts "------"
end

x = 0
while x > 3 || x < 1
p "which story please (1-3):"
  x = gets.chomp.to_i
end
x = x-1

puts "------"

essay_writer(title[x], person[x], date[x], content[x])
