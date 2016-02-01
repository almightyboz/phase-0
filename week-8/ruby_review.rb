
################################################################################
# Cipher Challenge

# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

##############################
def dr_evils_cipher(coded_message)
  # creates variable called input. input is an array of lowercase letters (no spaces), taken from the input to the function, coded_message
  input = coded_message.downcase.split("") ### Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  # creates empty array that will contain the fully decoded sentence
  decoded_sentence = []
  # hash that links the letter in the coded message(the key), to a letter in the decoded sentence (the value)
  cipher = {"e" => "a",   #### This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   #### the best data structure for this problem? What are the pros and cons of hashes?
            # The biggest con with a problem like this is that hashes do not (currently) come numerically ordered, the pairs can come as a jumble
            "g" => "c",
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

  input.each do |x| #### What is #each doing here? #It's iterating through each item in the input array
    found_match = false  #### Why would this be assigned to false from the outset? What happens when it's true? # The way that the flow control is set up, if there is no match it would get sent down to line 62, which would just take the item in the input array and put it into the answer array
    cipher.each_key do |y| ##### What is #each_key doing here? # Each_key is iteratnig through each key in the cipher hash (the keys are the uncoded letters, they point to the values of the correct )
      if x == y  ##### What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? # X is from line 45, y is from line 47. X is each letter in the uncoded message, y is an individual coded entry in the cipher hash.
        decoded_sentence << cipher[y] #
        found_match = true
        break  #### Why is it breaking here? #It's breaking us out of the second loop (through the cipher hash) back to the first loop (through the coded message). I surmise this is what one has to do whenever one is
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" ####What the heck is this doing? # identifies if a letter in the coded snippet is one of these characters, any one. Uses "or" identifier
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) ###### Try this out in IRB. What does   " (0..9).to_a "    do? #It returns an array of the integers 0 through 9. Those integers aren't coded, they are
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  ##### What is this looking for? # Periods, commas, exclamation points, . They are not part of the code, and are included manually in the message.
      decoded_sentence << x # adds the punctuation as an item to the answer array
    end
  end
  decoded_sentence = decoded_sentence.join("")
  ####What is this method returning? # A string made up of the joined-together array
end
##############################
# Your Refactored Solution

# PSEUDOCODE
# input - a line of characters.
# create a variable that is the alphabet as an (ordered) list
# create a list of all of the non-letter, non-number characters that will be translated as spaces
# create a list of all the numbers from 0 to 9
# create a list of English punctuation
# create an empty container object that will hold the answer
# convert the input into a list of characters (with all the letters lowercased)
# loop through every item on the list, one at a time
# test what kind of character each item is
# IF the item is a number (i.e., it can be found in the list of numbers)
# => add the number to the container object
# IF the item is a character that will be translated as a space
# => add a space to the container object
# IF the item is a punctuation mark
# => add whatever punctuation mark it is to the answer object
# IF the item is a lowercase letter
# => determine what "place" on the alphabet list that letter is
# => subtract 4 from the "place" that the number it is
# => find the letter in the alphabet at place minus 4
# => insert that letter into the answer list
# convert the list into a normal block of text
# output - A string of english words, with spaces

##############################
def dr_evils_cipher(coded_message)
  spaces_array = ["@", "#", "$", "%", "^", "&", "*"]
  alphabet_array = ("a".."z").to_a
  integer_array = (0..9).to_a
  input_message = coded_message.downcase.split("")
  decoded_sentence = []
  input_message.each do |character|
    if spaces_array.include?(character)
      decoded_sentence << " "
    elsif integer_array.include?(character)
      decoded_sentence << character
    elsif alphabet_array.include?(character)
      position = (alphabet_array.index(character))
      position -= 4 # can change function so it takes a coded message and a number of the degree of shift
      new_letter = alphabet_array[position]
      decoded_sentence << new_letter
    else
      decoded_sentence << character
    end
  end
  decoded_sentence = decoded_sentence.join("")
end

##############################
# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."

##############################################################################

# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Creates an operation called assert that doesn't need any inputted information to run when it's operation is "switched on."
# UNLESS, as the operation is being run, a correct assertion is made within a statement that follows the statement that switches on the function
# => The computer tells the user that the assertion has failed.
#END
# A new variable called "name" will store a string called "bettysue"
# The user turns on the assert function to analyze a block of code in the form of a boolean statement. (The output is true.)
# The user turns on the assert function to analyze a block of code in the form of a boolean statement. (The output is an error message on this line.)
#However, the error is on line 146, as the error will be raised if the boolean returned is "True"

# 3. Copy your selected challenge here

def mode(list)
 mode_hash = Hash.new
  list.each do |item|
    if mode_hash.has_key?(item)
      mode_hash[item] += 1
    else
      mode_hash[item] = 1
    end
  end
  return mode_hash.select{|key, value| value == mode_hash.values.max}.keys
end

def assert
  raise "Assertion failed!" while yield
end

sample_1 = [1,2,2,3,4]
sample_2 = []
sample_3 = ["cat", "cat", "dog"]
sample_4 = ["mom", "mom", "mom"]

assert { (mode(sample_1)) == 2 }
assert { (mode(sample_2)) == nil }
assert { mode(sample_3) == "cat" }
assert { mode(sample_4) == "mom" }


# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection