###################################################################################################
# THE DR EVIL CIPHER CHALLENGE
#
# I WORKED ON THIS CHALLENGE: Lars Johnson

###################################################################################################
# INITIAL SOLUTION
#
# WRITE YOUR COMMENTS ON WHAT EACH THING IS DOING
=begin

def dr_evils_cipher(coded_message)             # Method receives coded_message as parameter
  input = coded_message.downcase.split("")     # Applies downcase and splits into an array

  decoded_sentence = []

  cipher = {"e" => "a",         # Substitution cipher adds 4 to each alphabet letter
            "g" => "c",         # Stores in a hash with encoded as key, decoded as value
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x|             # Iterates over each encrypted letter in the received text
    found_match = false         # Assigns
    cipher.each_key do |y|      # Iterates over each encoded letter in the hash (key)
      if x == y                 # Compares each encrypted letter with each encoded letter
        decoded_sentence << cipher[y]   # Upon finding a match, pushes decrypted value into
        found_match = true              # the array decoded_sentence, switch to found: true
        break                   # Break stops IF block from continuing on this iteration
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " " # Replaces any non-letter found with a blank space
        found_match = true      # Sets found: true
        break                   # Break stops IF block from continuing on this iteration
      elsif (0..9).to_a.include?(x) # Checks for occurance of any unencrypted numbers
        decoded_sentence << x       # Pushes any numbers found into the decoded_sentence
        found_match = true      # sets found: true
        break                   # Break stops IF block from continuing on this iteration
      end
    end
    if not found_match          # This is looking for unencrypted punctuation
      decoded_sentence << x     # And pushing it into the decoded sentence
    end
  end
  decoded_sentence = decoded_sentence.join("")  # Converts decoded sentence into a string
end

=end
###################################################################################################
# MY REVISED AND PREFERRED SOLUTION (BUT THIS DOESN"T PASS THE TESTS)

=begin

rescue Exception => e

end
class DrEvil

  def plain(plain)
    @plain_key = plain
  end

 def key(key)
    @cipher_key = key
  end

  def decipher(cipher)
    @plaintext = ""
    cipher.downcase.split("").each do |cipher_letter|
      @cipher_key.split("").each do |key_letter|
        if %w(@ # $ % ^ & *).to_a.include?(cipher_letter)
          @plaintext << " "
          break
        elsif (0..9).to_a.to_s.include?(cipher_letter)
          @plaintext << cipher_letter
          break
        elsif key_letter == cipher_letter
          @plaintext << @plain_key[@cipher_key.index(cipher_letter)]
          break
        end
      end
    end
    return @plaintext
  end

end

code = DrEvil.new
code.plain("abcdefghijklmnopqrstuvwxyz")
code.key("efghijklmnopqrstuvwxyzabcd")
p code.decipher("efg#hi3j$kl%mn^opd")
p code.decipher("m^aerx%e&gsoi!")

=end

###################################################################################################
# MY 2ND REFACTORED SOLUTION (FINAL VERSION)

def dr_evils_cipher(cipher)
  plain_key = "a" + "c".upto("z").to_a.join("")+"f"
  plain_key << %w(@ # $ % ^ & *).join("")
  cipher_key = "eghijklmnopqrstuvwxyzabcdf"
  decoded = []

  cipher.split("").each { |element|
    unless cipher_key.index(element) == nil
      decoded << plain_key[cipher_key.index(element)]
    else
      plain_key.index(element) == nil ? decoded << element : decoded << " "
    end
  }
  decoded.join("")
end

###################################################################################################
# MY FIRST REFACTORED SOLUTION
=begin
def dr_evils_cipher(cipher)
  plain_key = "acdefghijklmnopqrstuvwxyz"
  cipher_key = "eghijklmnopqrstuvwxyzabcd"
  found_match = false
  plaintext = ""

  cipher.downcase.split("").each do |cipher_letter|
    cipher_key.split("").each do |key_letter|
      found_match = false
      if %w(@ # $ % ^ & *).to_a.include?(cipher_letter)
        plaintext << " "
        found_match = true
        break
      elsif (0..9).to_a.to_s.include?(cipher_letter)
        plaintext << cipher_letter
        found_match = true
        break
      elsif key_letter == cipher_letter
        plaintext << plain_key[cipher_key.index(cipher_letter)]
        found_match = true
        break
      end
    end
    if found_match == false
      plaintext << cipher_letter
    end
  end
  p plaintext
end
=end

###################################################################################################
# DRIVER TEST CODE

# ALL OF THIS DRIVER TEST CODE SHOULD RETURN TRUE

p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!"
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor feam went through several preparations. preparations a through g were a complete failure.\n fut now, ladies and gentlemen, we finally have a working tractor feam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd profafly move on and get another clone fut there would fe a 15 minute period there where i would just fe inconsolafle."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... fillions?"

=begin
###################################################################################################
# REFLECTION

1. What concepts did you review in this challenge?

    I reviewed the following concepts in this challenge:
      - Joining arrays
      - Splitting string
      - iterating over arrays
      - good use of nil
      - #index() method
      - implicit returns

2. What is still confusing to you about Ruby?

    I believe I have a decent understanding of the basics of Ruby, but I also know that I have much,
    much more to learn.

3. What are you going to study to get more prepared for Phase 1?

    Phase 1 begins in 2 days and I still have some classwork to do so unfortunately, I don't think
    there will be very much time for extra studying. If I have do have some time, I'm planning to
    look into jQuery and manipulating the DOM with JavaScript a bit more.


=end