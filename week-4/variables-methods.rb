#4.3
#Variables and Methods

puts "What is your first name?"
first = gets.chomp
puts "May I ask what your middle name is?"
middle = gets.chomp
puts "Can you please tell me your last name?"
last = gets.chomp
puts "How are you doing today, #{first} #{middle} #{last}"

puts "What is your favorite number?"
number = gets.chomp.to_i
number += 1
puts "Not bad, but I think #{number} is a better number."




