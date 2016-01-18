# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 3 hours on this challenge.

# Pseudocode

# Input: Two integers. First, the correct answer to the guessing game, which I will call ANSWER. Then, using a separate set of actions, a value that I will call GUESS
# Output: A boolean value, true or false

# Steps:
# Define ANSWER as a definite input to the game that will be reused..
# Define GUESS as a temporary input to the game, which can and will be terminated once a different GUESS input is entered by the user.
# compare GUESS against ANSWER, see which is bigger
# IF GUESS is bigger than ANSWER
# => Game should tell user that their guess was too low
# => Game will store "too low" as a value
# ELSE IF ANSWER is bigger than GUESS
# => Game should tell user that their guess was too high
# => Game will store "too high" as a (temporary) value
# ELSE IF ANSWER and GUESS are equal
# => Game should tell user that their guess was correct
# => Game will store "correct" as a (temporary) value
# The user then asks the game whether the game is solved or not
# IF the last guess resulted in a value of "too high" or "too low"
# => Game will tell user false, it is not solved
# ELSE IF the last guess resulted in a value of "correct"
# => Game will tell user true, it has been solved

# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     if guess < @answer
#       @guess = :low
#     elsif guess > @answer
#       @guess = :high
#       #return value
#     else # guess == @answer
#       @guess = :correct
#       #return value
#     end
#   end

#    def solved?
#     if @guess == :correct
#       return true
#     else
#       return false
#     end
#   end

# end

# new_game = GuessingGame.new(14)
# puts new_game.guess(5).inspect
# puts new_game.solved?
# puts new_game.guess(79).inspect
# puts new_game.solved?
# puts new_game.guess(1).inspect
# puts new_game.solved?

# puts new_game.guess(14).inspect
# puts new_game.solved?
# puts new_game.guess(6).inspect
# puts new_game.solved?
# puts new_game.guess(98).inspect
# puts new_game.solved?


# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess < @answer
      @guess = :low
    elsif guess > @answer
      @guess = :high
    else
      @guess = :correct
    end
  end

   def solved?
    @guess == :correct ? true : false
  end

end


# Reflection

# This questions revolved around the use of scope in a Ruby class. Local variables can only be accessed from within the particular method, loop, or code block. They disappear when said thing ends operation. Global variables exist in their own specific forms across all classes, modules, procs, and loops. Their accessibility is their downfall, they aren't used much. Instance variables are to classes as local variables are to methods and loops and blocks. A class method may have both instance and local variables in its workings, possibly also global variables. Class variables are accesible within all instances of that class and are used to define something specific to the class itself.
# Here's examples of how the various variables are written in Ruby. local_variable, $global_variable, @instance_Variable, @@class_variable, CONSTANT.
# We used symbols in this challenge because they are less taxing on the computer's memory. Unlike strings, symbols cannot be changed and only overwritten. Even though we aren't taking that much processing power for this week's challenge, calling the guess function several times requires a data type that lends itself well to being overwritten. So the rest of the program can compare that particular instance variable to the answer.
# In this challenge I used a ternary operator expression for the first time, and it was an interesting way to think about flow control. Instead of being broken up by line breaks and keywords, the "meat" of the statement is contained on one line, broken up by the operators, and "rearranged." Incidentally, I didn't solve the problem until I fixed the solved? method to return false for any instance of @guess that didn't have :correct stored in it. I could easily have represented the method guess as a case statement, because there are three non-overlapping options for the solution.