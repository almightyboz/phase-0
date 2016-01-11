# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: A number of sides that my particular die will be
# Output: a random number between 1 and the number of sides of the die
# Steps:
# raise an error if the inputed number is less than 1
# take the number of sides as the upward bound that the die roll will be
# generates a random number between 1 and the number of faces on the die
# return number

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Error")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end

end


# 3. Refactored Solution

# I don't think it's possible for me to refactor my solution farther.

# 4. Reflection
# One raises an ArgumentError in a class's method to notify that one is using unacceptable arguments. Meaning, you will get an false answer or a difficult-to-understand error farther down the line if the unacceptable argument is initialized as the instance variable.
# I only used rand and raise. Mine is a very bare-bones class, I have some experience writing Ruby on this level, but not much.
#  One activates a class by passing parameters into new(). That would create a new instance of your class. One could just have the methods and pass information in and out of them in turn, but one would need to keep impeccable records of which variable stores what information, and methods on their own must have information passed into them. Classes are "buckets" in which related information and operation can work, instead of having related methods sprawled over the script.
# Local variables are to methods as instance variables are to classes. They are used to "store" information that the user will pass into the method/class as the information is acted upon by the method or class. You can use instance variables throughout the class, you don't need to pass them as parameters to the methods in the class.