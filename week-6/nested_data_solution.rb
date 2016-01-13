# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |number|
  if number.kind_of?(Array)
    number.map do |array_num|
      # puts array_num
      array_num += 5
    end
  else
    # puts number
    number += 5
  end
end
p number_array
puts number_array
##############################################
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  if name.kind_of?(Array)
    name.map do |array_name|
      if array_name.kind_of?(Array)
        array_name.map do |name_name|
          name_name += "ly"
        end
      else
        array_name += "ly"
      end
    end
  else
    name += "ly"
  end
end

puts startup_names

##############################################
#REFACTORED CODE
number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |number|
  if number.kind_of?(Array)
    number.map { |array_num| array_num += 5}
  else
    number += 5
  end
end
p number_array
puts number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  if name.kind_of?(Array)
    name.map do |name_array|
      if name_array.kind_of?(Array)
        name_array.map {|nested_name_array| nested_name_array += "ly"}
      else
        array_name += "ly"
      end
    end
  else
    name += "ly"
  end
end

#REFACTORED BONUS
startup_names.flatten!.map! {|name| name += "ly"}
puts startup_names

##################################

#REFLECTION
#What are some general rules you can apply to nested arrays?
# Be careful when using puts to show the steps in one's code, because puts contains special sugar and will print each nested element in a newline, regardless of whether your method changed it in any way.

#What are some ways you can iterate over nested arrays?
# After an each, map, or collect method call, insert a line of code that determines whether an element in the array is a value or an array, and respond accurately. An array within an array within an array would need a two lines that "asks" if the element is an array.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# Because the specs didn't specify that our method had to be non-destructive, or even preserve the nested structure at all, we tried using the flatten!() method. It worked well because it made it into a one-D array that could be iterated through without nesting methods under it.