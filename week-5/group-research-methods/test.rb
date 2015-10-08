i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# PERSON 1's ARRAY FINDING SOLUTIONS

# def my_array_finding_method(source, thing_to_find)
#   answer = Array.new
#   source.each {|element|
#     if element.to_s.downcase.include? thing_to_find
#       answer << element
#     end
#   }
#   p answer
# end
# my_array_finding_method(i_want_pets, "t")


def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.map { |element| if element.to_s.include? thing_to_find then answer << element end }
  p answer
end
my_array_finding_method(i_want_pets, "w")

def my_array_finding_method(source, thing_to_find)
  answer = Array.new
  source.map { |element|
    if element.to_s.include? thing_to_find
      answer << element
    end
    }
  p answer
end
my_array_finding_method(i_want_pets, "t")

################################################################

# PERSON 1s HASH FINDING SOLUTIONS


# def my_hash_finding_method(source, thing_to_find)
#     answer = Array.new
#     source.each {|k,v|
#       if v == thing_to_find
#         answer << k
#       end
#     }
#     p answer
# end
# my_hash_finding_method(my_family_pets_ages, 3)


# def my_hash_finding_method(source, thing_to_find)
#     answer = Array.new
#     source.each {|k,v| if v == thing_to_find then answer << k end }
#     p answer
# end
# my_hash_finding_method(my_family_pets_ages, 3)

# OTHER STUFF I TRIED

    # answer = source.select {|k,v| v == thing_to_find }.to_a.flatten
    # answer << source.key(thing_to_find)
    # p answer

    # p source.has_value? thing_to_find
    # p source[source.has_value? thing_to_find]
# end




