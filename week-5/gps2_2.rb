=begin

GPS 2.2

We worked on this together: (Eric Freeburg & Lars Johnson)

RELEASE 1: PSEUDOCODE

CREATE and populate initial gorcery list (hash)

CREATE method for adding/updating items to the list (hash)
INPUT will be item, quantity (key, and value) received as arguments
OUTPUT will be to create or update the key and value in the hash

CREATE method for removing items from hash
INPUT will be item, quantity (key, and value) received as arguments
OUTPUT will be to delete the key and value in the hash

CREATE method for printing the list
INPUT will be the gorcery list (hash) received as an argument
OUTPUT will be to print the formatted list to the screen
  Print "    Qty    Item"

CALL Method to remove item
CALL Method to update item
CALL Method to print list

=end

# --------------------------------------------------------

# RELEASE 4: OUR REFACTORED SOLUTION

grocery_list = { "lemonade" => 2,
                "tomatoes" => 3,
                "onions" => 1,
                "ice cream" => 4 }

def add_update(grocery_list, item, qty)
  grocery_list[item] = qty
end

def remove(grocery_list, item, qty)
  grocery_list.delete(item)
end

def print(grocery_list)
  puts
  grocery_list.each {|k, v| puts "   #{v}  #{k}" }
  puts
end

remove(grocery_list, "lemonade", "0")

add_update(grocery_list, "ice cream", 1)

print(grocery_list)

# --------------------------------------------------------

=begin

RELEASE 5: MY REFLECTION (Lars Johnson)

1. What did you learn about pseudocode from working on this challenge?

   Pseudocoding was a bit easier for me this time as I had a chance to do some thinking about the methods we might need ahead of time. However, I didn't realize that we were supposed to be passing all of the grocery list items and qty in as arguments from the very beginning so we included a user input method and a method for determining whether we needed to update/remove/print or quit in our original pseudocode. It wasn't a big deal, but turned out to be unnecessary.


2. What are the tradeoffs of using Arrays and Hashes for this challenge?

    We used a hash for this challenge and chose to do so because it was easy to assign grocery items as keys with quantities as values and then update or remove any of those item and quantity pairs as needed. If we had chosen to use an array, it would have been necessary to know (or iterate to) the index positions of any items we wanted to update or remove. That would have required unnecessary programming.


3. What does a method return?

    A method either returns the last evaluated expression or whatever information is specified in the return.


4. What kind of things can you pass into methods as arguments?

    We can pass almost anything into a method as arguments (variables, strings, integers, floats, arrays, hashes, and even other methods).


5. How can you pass information between methods?

    Comma separated information (see #4 above) can be specified as arguments in parenthesis following the method call. For example, on line 51 above, we call the method "remove" with these arguments: A hash called grocery_list, an item called "lemonade", and a quantity as a string called "0".


6. What concepts were solidified in this challenge, and what concepts are still confusing?

  The concept that you can pass a hash as a method was solidified for me in this challenge, and the value of pseudocoding is also now starting to come together for me as a result of this challenge.

  I am still confused as to why line 47 was breaking Coderpad and throwing errors. We spent a long time trying to debug something that isn't broken and works perfectly in Ruby.

=end
