# Your Names
# 1) Emily(me)
# 2) Jonathan S.

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  cookbook.include?(item_to_make)
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


