
# REFACTORED BY ADELL HANSON-KHAN
# https://github.com/adellhk/phase-0/blob/b4a279c63abeae9e8fa4cd07e77bac210c3127f5/week-6/gps.rb


def pluralize(num, word)
  return num.to_s + " " + word if num == 1
  return num.to_s + " " + word + "s"
end

def place_order(food_preferred, ingreds_provided)
  menu = {pie: 7, cake: 5, cookies: 2}
  return "WARNING! #{food_preferred.capitalize} is not on the menu." unless menu[food_preferred]
  return "We need more ingredients to make #{food_preferred}" if ingreds_provided < menu[food_preferred]

  serving_suggestion = {}
  serving_suggestion[food_preferred] = (ingreds_provided / menu[food_preferred])
  ingreds_provided %= menu.delete(food_preferred)
  menu.each do |food, ingreds_req|ingreds_provided
      serving_suggestion[food] = (ingreds_provided / ingreds_req)
      ingreds_provided %= ingreds_req
  end

  "You can make #{pluralize(serving_suggestion[:pie], 'pie')}, #{pluralize(serving_suggestion[:cake], 'cake')}, and #{pluralize(serving_suggestion[:cookies], 'cookie')}. After this, you will have #{pluralize(ingreds_provided, 'ingredient')} leftover."
end

# place orders with item name and number of provided ingredients
p place_order(:pie, 130 )
p place_order(:pie, 82)
p place_order(:cake, 32)
p place_order(:cake, 7)
p place_order(:cookies, 1)
p place_order(:cookies, 10)
p place_order(:spam, 5)