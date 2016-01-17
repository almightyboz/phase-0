
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


###################################################################################
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create 2 empty container objects
  # generate a random letter that is either b, i, n, g,  or o
  # store this random letter in the first container object
  # generate a random number between 1 and 100
  # store that number in the second container object
  # make sure the two container objects can be accessed freely and separately with the other operations in the program

# Check the called column for the number called.
  # Create a data structure that links each letter in "BINGO" with the order of it's placement in the word. (e.g. The letter "G" is at index 3 in the word "bingo").
  # Find which slot in the word "bingo" the called letter is at (i.e. a number between 0 and 4). (I will call this number z for the purposes of this code)
  # Iterate through each sub-list in the list of lists
  # => Identify the zth item in the list
  # => Check if the number at place z on the sublist matches the called number
  # => IF the zth number is a match to the called number
  # =>      return that it is a match, it is true
  # =>      store the place that the particular value is at to a variable (how to find it within the data structure that is the bingo board.)
  # => ELSE if it is not a match
  #         return that it is a false match

# If the number is in the column, replace with an 'x'
  # Find the value in the data structure that matched the call
  # write over that value with "x"
  # save the resulting nested data structure as the one to work with


# Display a column to the console
  # Identify what letter in bingo/place in a sub-list one will display (hereafter z)
  # Iterate through the list of lists
  # => in each sublist in turn, display the zth number in the sublist
  #

# Display the board to the console (prettily)
  # Take the list thht is the new and corrected board
  # print the word BINGO to the screen with a tab space between each letter
  # iterate through each sublist in the major list
  # => Print the sublist without commas or brackets, with a tab between each number
  # => At the end of each sublist, create a line break
  # return full solution.

###################################################################################
# Initial Solution

# class BingoBoard

#   attr_accessor :board
#   def initialize(board)
#     @bingo_board = board
#   end

#   def create_call
#     bingo_hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
#     letter = NewLetter.new
#     @letter = letter.letter
#     number = NewNumber.new
#     @number = number.number
#     #p @number
#     @word_place = bingo_hash[@letter]
#     #puts "Your call is: #{@letter}#{@number}"
#     #puts "That letter is the #{@word_place}th element in the word 'bingo'"
#   end

#   def check_and_mark
#     row_counter = 0
#     @bingo_board.each do |row|
#       if row[@word_place] == @number
#         #p "It's a match."
#         @row_place = row_counter
#         #puts "#{@row_place} is the row that has the value"
#         @bingo_board[@row_place][@word_place] = "X"
#         break
#       else
#         row_counter += 1
#         next
#       end
#     end
#   end

# #############
#   #NOTE FROM E.B. I am leaving the following block here for my personal debugging purposes
#   #   def input_check_column(letter, number)
#   #   @letter = letter
#   #   @number = number
#   #   bingo_hash = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
#   #   @word_place = bingo_hash[@letter]
#   #   row_counter = 0
#   #   @bingo_board.each do |row|
#   #     if row[@word_place] == @number
#   #       p "It's a match."
#   #       #return true
#   #       @row_place = row_counter
#   #       #puts "#{@row_place} is the row that has the value"
#   #       @bingo_board[@row_place][@word_place] = "X"
#   #       break
#   #     else
#   #       #p "Not a match."
#   #       #return false
#   #       row_counter += 1
#   #       next
#   #     end
#   #   puts "Not a match"
#   #   end
#   # end
#   #############

#   def display_column
#     @bingo_board.each do |row|
#       puts row[@word_place]
#     end
#   end

#   def print_board
#     "BINGO".each_char do |char|
#       print "#{char}\t"
#     end
#     puts
#     @bingo_board.each do |row|
#       row.each do |num|
#         print "#{num}\t"
#       end
#       puts
#     end
#   end

# end

# class NewLetter
#   attr_accessor :letter
#   def initialize
#     letter = ["B", "I", "N", "G", "O"].sample
#     @letter = letter
#     #@letter = [:b, :i, :n, :g, :o].sample
#   end
# end

# class NewNumber
#   attr_accessor :number
#   def initialize
#   @number = rand(1..100)
#   end

# end

###################################################################################
# Refactored Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def create_call
    call = NewCall.new
    @letter = call.letter
    @number = call.number
    @letter_index = "BINGO".index(@letter)
  end

  def check_and_mark
    row_counter = 0
    @bingo_board.each do |row|
      if row[@letter_index] == @number
        @bingo_board[row_counter][@letter_index] = "X"
        #if I wanted to write a method to display a row, I would make row_place an instance variable
      else
        row_counter += 1
      end
    end
  end

  def display_column
    @bingo_board.each{|row| puts row[@letter_index] }
  end

  def print_board
    puts "B\tI\tN\tG\tO"
    @bingo_board.each do |row|
      row.each{|num| print "#{num}\t"}
      puts
    end
  end
end

class NewCall
  attr_reader :letter, :number
  def initialize
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1..100)
  end
end

#########################################################
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
10.times {
  new_game.create_call
  new_game.check_and_mark
}
new_game.print_board

###################################################################################

#Reflection

#
