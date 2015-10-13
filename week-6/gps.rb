# Your Names
# 1) John Paul Chaufan Field
# 2) Lars Johnson

# We spent [4] hours on this challenge.

# Bakery Serving Size portion calculator.


# Recieve a baking item and quantity of provided ingredients
def place_order(item_to_make, provided_ingredients)


# the menu with ingredients needed to make one of each item
  puts
  menu = {cookies: 2, cake: 5, pie: 7}

  # alert if the food item to make is not on the menu or if we have insufficient ingredients
  if !menu[item_to_make]
    return "#{item_to_make.capitalize} is not on the menu."
  elsif provided_ingredients < menu[item_to_make]
    return "We need more ingredients to make that item."
  else

  # identify ingredients required to make the item, plus any leftover ingredients
    required_ingredients = menu[item_to_make]
    leftover_ingredients = provided_ingredients % required_ingredients
    items_made = provided_ingredients/required_ingredients

  # create message to convey if any there are any leftover ingredients
    plural = 's' if items_made > 1 && item_to_make != :cookies
    message = "We've made #{items_made} #{item_to_make}#{plural}. You have #{leftover_ingredients} leftover ingredients."


  # calculate and convey how many items can be made, and also leftover ingredients and suggestions for use
    if leftover_ingredients >= menu[:cake]
      return "#{message} Have some cake."
    elsif leftover_ingredients >= menu[:cookies]
      return "#{message} Have some cookies."
    elsif leftover_ingredients > 0
      return "#{message} Not enough to make anything."
    else
      return "We've made #{items_made} #{item_to_make}#{plural}."
    end
  end
end

# place orders with item name and number of provided ingredients
p place_order(:pie, 130 )
p place_order(:pie, 82)
p place_order(:cake, 32)
p place_order(:cake, 7)
p place_order(:cookies, 1)
p place_order(:cookies, 10)
p place_order(:spam, 5)


=begin

#  Reflection

1. What did you learn about making code readable by working on this challenge?

2. Did you learn any new methods? What did you learn about them?

3. What did you learn about accessing data in hashes?

4. What concepts were solidified when working through this challenge?

=end