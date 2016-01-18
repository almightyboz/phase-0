# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Brian Bier.
# I spent 2 hours on this challenge.
##############################################################
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

##############################################################
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
​
  def initialize(card_number)
    split_card = card_number.to_s.split("")
    if split_card.length != 16
      raise ArgumentError.new("Not a valid credit card")
    end
     @card_number = split_card.map(&:to_i)
  end
​
  def check_card
   new_array = []
    for index in (0...@card_number.length)
      if index.even?
      new_array.push(@card_number[index] *= 2)
    # puts "At position #{index}: #{reverse[index]}"
      else
      new_array.push(@card_number[index])
      end
    end
     individual_card =new_array.join("").split('').map(&:to_i)
​
      sum = 0
      individual_card.each do |i|
        sum += i
      end
​
    if  sum % 10  == 0
       true
    else
      false
    end
​
  end
​
end
​
new_card = CreditCard.new(4408041234567901)
new_card.check_card

##############################################################
# Refactored Solution

#REFACTOR
​
class CreditCard
​
  def initialize(card_number)
    @card_number = card_number.to_s.split("").map(&:to_i)
    if @card_number.length != 16
      raise ArgumentError.new("Incorrect digit count for #{card_number}")
    end
  end
​
# http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-each_with_index
  def check_card
    formatted_cc_numbers = []
    @card_number.each_with_index do |item,index|
      if index.even?
        formatted_cc_numbers.push(item * 2)
      else
        formatted_cc_numbers.push(item)
      end
    end

    individual_card = formatted_cc_numbers.join("").split('').map(&:to_i)
​
   # sum = individual_card.inject{|sum,num| sum + num}
    sum = individual_card.inject(&:+)
    sum % 10  == 0
  end
end
​
new_card = CreditCard.new(4408041234567901)
p new_card.check_card


##############################################################
# Reflection
# The most difficult part of this challenge was finding a way to modify every other item in the array. We tried .each_slice to middling success, but my partner was the one who decided that we use each_with_index and even? to do both. I had no idea that either could go either, or that control flow could work in that manner, but it made sense as soon as I understood it. And I'm glad I know those methods now, as well as the use of inject() when summing up an array of integers. (Using inject isn't difficult, it means one doesn't need a counter and an interating loop to sum an array, understanding inject() is difficult.)