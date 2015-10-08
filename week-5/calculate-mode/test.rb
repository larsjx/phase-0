# 3. REFACTORED MODE SOLUTION

# def mode(list)
#   our_hash = Hash.new
#   for i in 0...list.length
#     result = Array.new
#     number_items = list.count(list[i])      # Counts freq of items (for each item)
#     our_hash = our_hash.merge ({list[i] => number_items}) # Adds item & freq to hash
#     max_array = our_hash.max_by {|k,v| v}                 # Add max value to max_array
#     our_hash.each {|k,v|                                  # Iterate through key/values
#       if v == max_array[1]                                # If value = overall max value
#         result.push(k)                                    # Push to result array
#       end
#     }
#   end
#   p result
# end

############################################# EXPERIMENTAL

def mode(items)
  freq = Hash.new
  for i in 0...items.length
    freq = freq.merge ({items[i] => items.count(items[i])}) # Adds item & freq to hash
  end
  return max_key(freq)
end

def max_key (freq)
  max_value = freq.max_by {|key| key}
  max_value = max_value[1]
  p max_value
  p freq
  # return get_key(max_value, freq)
end

def get_key(max_value, freq)
  result = Array.new
  freq.each {|k,v|
    if v == max_value
      result.push(k)
    end
  }
  p max_value
  p result
end


# ==================================
# TEST DATA FROM CHALLENGE SUMMARY

mode([1,2,3,3])
mode([4,5,0,0])                             ### FAILING THIS TEST (BECAUSE OF ZEROS?)
mode([1.5, -1, 1, 1.5])
mode([1,1,2,2])
mode([1,2,3])
mode(["who", "what", "where", "who"])
mode(["who", "what", "where", "who", "who"])