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
      answer_string = answer_string[0..(counter_index + 2)] << "," << answer_string[(counter_index + 3)..-1]
      counter_index += 4
      #puts answer_string.reverse
    else
      break
    end
  end
  answer_string = answer_string.reverse
  return answer_string
end


# 2. Refactored Solution

def separate_comma(integer)
  answer_string = integer.to_s.reverse
  index_counter = 0
  while answer_string[index_counter + 3] != nil
    answer_string.insert((index_counter + 3), ",")
    index_counter += 4
  end
  return answer_string.reverse
end


# 3. Reflection

# My process is usually to sketch the problem like a flow chart. Each operation/method/question/definition is a bubble, and bubbles branch off and join others and loop. That helps me think about flow control and looping. I was debating whether to use the each_char method instead of using indices as variables. And I really really debated whether I should use the reverse method on the string, instead of inserting commas into the string from left to right. I took the solution I did because I felt that it was less likely to mess with the indexes and order.
# My Pseudocode did help me. My initial solution was a more or less direct transcriptions of the pseudocode. I had to struggle with the combination of until and if loops, but it worked. My goal was that my code could run on the longest numbers, far longer than the spec tests specify.
# I'll be honest, I didn't review the instructions as closely as I could have. Specifically, the part that directed me not to look up Ruby docs until I was refactoring. I looked at the docs while I was coding, found the insert method, and used it in the first version of my code. Just now, I went back and rewrote line 38 to incorporate the only other way I could think of to add a comma. A self punishment. And so I must conclude that insert was the best find I made, because line 38 is too long.
# I initially had a loop that basically said "while true", and a nested if statement whose else condition was just "break".
# I do think my refactored solution is more readable. It isn't redundant (most egregious is that I basically have a "while true" above a conditional), and I feel good about changing the name of the variable, because I feel the name in the refactored version is better.

