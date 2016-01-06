# Pad an Array

# I worked on this challenge with Jenna: ]

# I spent  hours on this challenge. 1.5 hours co-coding with Jenna,


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
 # An array, an integer (minimum size), value (padding)
# What is the output? (i.e. What should the code return?)
# An array
# What are the steps needed to solve the problem?

# create variable - empty solution array
# set variable for minimum size - equal zero - will change after call
# IF minimum size <= array size
#   return array
# END

# When length of the array < minimum number
# variable that is minimum number minus array
# => take that number and add that many value objects to the end

# when the pad method is called, return a new object
# when the pad! method is called, overwrite the original object


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  solution_array = []
  if min_size <= array.length
    #p array
    return array
  elsif min_size > array.length
    solution_array = array
    times_to_pad = min_size - array.length
    #p times_to_pad
    times_to_pad.times do
      solution_array << value
      #p solution_array
    end
  end
  return solution_array
end

def pad(array, min_size, value = nil) #non-destructive

  solution_array = Array.new
  array.each do |x|
    solution_array << x
  end

  if min_size <= array.length
    #p array
    return solution_array

  elsif min_size > array.length
    times_to_pad = min_size - array.length
    #p times_to_pad

    times_to_pad.times do
      solution_array << value
      #p solution_array
    end

    #return solution_array
  end
  return solution_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  solution_array = array
  (min_size - array.length).times do
    solution_array << value
  end
  return solution_array
end

def pad(array, min_size, value = nil) #non-destructive
  solution_array = array.clone
  (min_size - array.length).times do
    solution_array << value
  end
  return solution_array
end

# 4. Reflection

# We were sucessful in the sense that we wrote pseudocode and were eventually able to get a working solution to the problem. But we had to do a lot of the work while working through the problem. And we didn't factor in how the solution array had to be an entirely different object than the input array, so
#
#
#
#Were you successful in breaking the problem down into small steps?
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# How readable is your solution? Did you and your pair choose descriptive variable names?
# What is the difference between destructive and non-destructive methods in your own words?
# REMEMBER THAT NEXT COMMIT MESSAGE WILL BE "ADDING REFLECITON"