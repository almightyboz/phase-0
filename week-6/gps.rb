# Your Names
# 1) Emily(me)
# 2) Jonathan S.

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if cookbook.include?(item_to_make) == false

  serving_size = cookbook[item_to_make]

  no_leftovers = "Great! You can make #{num_of_ingredients / serving_size} #{item_to_make}!"
  has_leftovers = no_leftovers + " You could make #{num_of_ingredients % serving_size} cookies with your leftovers."

  return no_leftovers if num_of_ingredients % serving_size == 0
  return has_leftovers if num_of_ingredients % serving_size != 0
end

 p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
 p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

#W#### What did you learn about making code readable by working on this challenge?
# We learned that making many explicit comments is a solid way to grasp what operation is taking place in a chunk of code. As well as the benefit of really explicit variable names, like no_leftovers.
##### Did you learn any new methods? What did you learn about them?
# I learned include(). It was really effective in this challenge in particular.
##### What did you learn about accessing data in hashes?
# I learned that there are ways to search through the values and the keys of a hash, in order to link pairs of information. That way one does not have to iterate through the pairs of a hash in order to associate a particular bit of information with a hash key.
##### What concepts were solidified when working through this challenge?
# My partner was the one who wrote line 12, and I had never made an effort to get acquanted with that way of writing "if statements." It has taken me looking at it and comparing it to the old code to make me appreciate it, and realize that it's performing a very simple operation, but one would have written in five lines or so otherwise.