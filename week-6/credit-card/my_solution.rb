# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Brian Bier.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A number (should be 16 digits)
# Output: A boolean, true or false

# Steps:
# Test if the number has less or more than 16 digits
# => IF SO, raise an error message
# IF NOT, initialize it as an instance variable (store it as a variable in the class)
# create an empty container/list object
# iterate through each number in turn, adding it to the list object
# Iterate through the list, stopping at every other digit
#   create empty counter object, of the object at the index
#   double index 0
# => add 2 to counter
# => repeat for 2, 4, etc. Leave 1, 3, 5, etc, alone
# iterate through each number on the list
# => test if it's a one or two digit number
# => IF a two digit number
# =>    break apart the digits (like a word instead of a number)
# =>    return the sum of the two broken digits
# => IF a one digit number
# =>    No operations, keep going
# create an empty counter, set at 0
# iterate through the list
# => Add each number to the counter
#   return the sum of every number on the list
# test if the sum of every number divides by 10
# => IF yes
# =>   return true
#   IF no
#       return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    split_card = card_number.to_s.split("")
    if split_card.length != 16
      raise ArgumentError.new("Not a valid creditcard")
    end
    @card_number = split_card
  end


  # def check_card
  #   index_counter = 0
  #   @card_number.each do |num| #maybe change to map! later?
  #     num = num.to_i
  #     if @card_number[counter]
  #       num *= 2
  #       counter += 2
  #     end
  #   return @card_number
  #   end
  # end

  def multiply_numbers
    bigarray = []
    #index_counter = 0
    @card_number.map! do |num| #maybe change to map! later?
      num = num.to_i
    end
    @card_number.each_slice(2) {|sublist| bigarray << sublist}
    p bigarray
    bigarray = bigarray.each{|sublist| sublist[0] *= 2}
    p bigarray
    @card_number = bigarray.flatten(1)
  end

  def check_card
  end

end

# end


#p check_card(["0", "1", "2", "3", "4", "5", "6", "7"])


# Refactored Solution

# ary = [0,1,2,3,4,5,6]
# counter = 0
# ary.each{|num| puts num}


# bigarray = []
# ary.each_slice(2){|n| bigarray << n }

# puts bigarry.each{|sublist| sublist[0] *= 2}
# p ary

# counter = -2
# while counter > -6







# Reflection