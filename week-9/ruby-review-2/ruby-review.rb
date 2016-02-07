##Fibonacci Challenge

# I worked on this challenge by myself.
# This challenge took me 1 hours.

# Pseudocode
#INPUT - number
# create an empty container object - a list
# UNTIL you generate a number that is larger than the inputted number
# => generate numbers on the fibonacci sequence
# => put the generated numbers in the list object, one by one
# check if the number is identical to a number on the list of numbers
# OUTPUT  - a boolean, stating that it is true or false.


# Initial Solution

# def is_fibonacci?(num)
#   fibo_list = [1]
#   penultimate = 0
#   last_number = 1
#   until last_number > num
#     answer = penultimate + last_number
#     fibo_list << answer
#     penultimate = last_number
#     last_number = answer
#   end
#   fibo_list.each do |number|
#     if number == num
#       return true
#     end
#   end
#   return false
# end

# Refactored Solution

def is_fibonacci?(num)
  fibo_list = []
  penultimate_number = 0
  last_number = 1
  until last_number > num
    next_number = penultimate_number + last_number
    fibo_list << next_number
    penultimate_number = last_number
    last_number = next_number
  end
  return fibo_list.include? num
end


# Reflection

##### What concepts did you review in this challenge?
# I created a Fibonacci number geneator last summer, but haven't looked at it since, so I reviewed how one goes about doing this.  I mostly reviewed control flow and the use of variables. I really really wanted to find a way to not need a next_number variable, but couldn't find one.
##### What is still confusing to you about Ruby?
# Recursion, I found a lot of solutions that involved it when I was researching common solutions and approaches.
##### What are you going to study to get more prepared for Phase 1?
# I'm going to skim ahead in Well Ordered Rubyist and review my notes.