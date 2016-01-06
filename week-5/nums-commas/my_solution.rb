# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer
# What is the output? (i.e. What should the code return?)
# a comma-separated integer as a string
# What are the steps needed to solve the problem?

# convert integer into string
# reverse string
# set index counter variable to 0
# UNTIL index counter minus one is greater than string length
# => See if there exists a number at index counter plus three
# =>  IF true
# =>    Insert a comma at index counter + 3
# =>    add four to counter
# =>  IF false
# =>    reverse string
# return string
# END

# 1. Initial Solution

def separate_comma(integer)
  answer_string = integer.to_s
  answer_string = answer_string.reverse
  counter_index = 0
  until (counter_index + 1) == answer_string.length
    if answer_string[counter_index + 3] != nil
      answer_string.insert((counter_index + 3), ",")
      counter_index += 4
      #puts answer_string.reverse
    else
      answer_string = answer_string.reverse
      break
    end
  end
  return answer_string
end



# 2. Refactored Solution




# 3. Reflection