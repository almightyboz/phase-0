# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Emily Bosakowski.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of integers
# Output: total of all integers added together
# Steps to solve the problem.

# Set a counter equal to zero
# Set answer variable equal to zero
# UNTIL counter is equal to the size of the array
# ---- Take the number at index counter
# ---- Add to answer variable
# ---- Add one to counter
# END UNTIL
# RETURN Answer

# 1. total initial solution

def total(arr)
  answer = 0
  counter = 0
  until counter == arr.length
    answer += arr[counter]
    counter += 1
  end
  return answer
end


# 3. total refactored solution
def total(arr)
  arr.inject {|x,y| x + y}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a single string
# Steps to solve the problem.

# Set counter to zero
# Set answer variable to empty string
# UNTIL counter equals length of array
# ---- Take word at index counter and concatenate it to the answer variable
# ---- Add one to counter
# END UNTIL
# RETURN answer


# 5. sentence_maker initial solution
def sentence_maker(arr)
  counter = 0
  sentence = ""
  until counter == arr.length
    word = arr[counter].to_s
    sentence = sentence + word + " "
    counter += 1
  end
  return sentence.capitalize.rstrip + "."
end


# 6. sentence_maker refactored solution
def sentence_maker(arr)
  arr.join(" ").capitalize + "."
end
