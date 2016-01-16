# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess < @answer
      @guess = :low
    elsif guess > @answer
      @guess = :high
      #return value
    else # guess == @answer
      @guess = :correct
      #return value
    end
  end

   def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end

end

new_game = GuessingGame.new(14)
puts new_game.guess(5).inspect
puts new_game.solved?
puts new_game.guess(79).inspect
puts new_game.solved?
puts new_game.guess(1).inspect
puts new_game.solved?

puts new_game.guess(14).inspect
puts new_game.solved?
puts new_game.guess(6).inspect
puts new_game.solved?
puts new_game.guess(98).inspect
puts new_game.solved?


# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guesss)
    if guess < @answer
      @guess = :low
    elsif guess > @answer
      @guess = :high
    else
      @guess = :correct
    end
  end

   def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end

  # def solved?
  #     @guess == :correct ? return true : return false
  #   end

end


# Reflection