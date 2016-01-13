# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.
############################################
# Pseudocode

# Input: A list of chunks of text
# Output: Being able to present the text, and to get a random text chunk
# Steps:
# Create a sort of thing that is a die
# UNLESS the list of text pieces is completely empty
#   in which case, it generates a specialized error message
# END
# determine the length of the list of sides
# it presents a list of the sides of the die
# it generates a random value between one and however many entries are on the list
# it connects the random value to the corresponding element on the list
# it presents that random text chunk to the viewer

############################################
# Initial Solution

class OriginalDie
  def initialize(labels)
    if labels.length <= 0
      raise ArgumentError.new("There is no such thing as a #{labels.length}-sided die.")
    end
    @labels = labels
    @length = labels.length
  end

  def sides
    return @length
  end

  def roll
    value = rand(1..@length)
    value -= 1
    answer = @labels[value]
    return answer
  end
end


############################################
# Refactored Solution

class Die

  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("There is no such thing as a #{labels.length}-sided die.")
    end
    @labels = labels
    @number_of_sides = labels.length
  end

  def sides
    return @number_of_sides
  end

  def roll
    rand_number = rand(1..@number_of_sides)
    return @labels[(rand_number - 1)]
  end
end

############################################
# Reflection

#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The logic was basically the same. The random number that the roll method generates (from one to the number of elements in the array), instead of being returned directly to the user, is the index to the value that will be returned to the user.

#What does this exercise teach you about making code that is easily changeable or modifiable?
# I know now that easily changeable code saves time and requires an understanding of your new problem versus your original problem. The basic functionality of the methods was the same, but I added a new instance variable because I knew it was going to be used in multiple methods, which it was.

#What new methods did you learn when working on this challenge, if any?
# I learned about the empty() method for arrays, as well as the Ruby convention of a question mark after methods that return boolean values. I was also able to play with return and rand to solidify their limitations.

#What concepts about classes were you able to solidify in this challenge?
# I researched accessors to see if they could clarify my code, but wasn't able to find a compelling reason to use them. And, since it was a more complicated problem than last week's, I really could understand the benefit of grouping a bunch of linked methods and information that will travel through and between them, but which cannot spill or be used outside the class without declaring an instance of the class.