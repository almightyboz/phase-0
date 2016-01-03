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


# I don't know how to make these hyperlinks, so you'll have to copy-paste these:
# FORMATTED ADDRESS
# https://github.com/almightyboz/phase-0/blob/master/week-4/address/my_solution.rb
# MATH METHODS
# https://github.com/almightyboz/phase-0/blob/master/week-4/math/my_solution.rb

# One defines a local variable similarly to all variables. A lowercase, non-spaced, sequence of characters that begins with a character or an underscore, a single equals sign, then the code that will be stored in the local variable.

# Running a ruby file from the command is a matter of typing "ruby [name of file]" and pressing enter. (I am assuming that one has ruby installed in one's machine, it's got .rb for it's file extension, and one is in the directory of the ruby file).
# Running an RSpec file from the command line is a matter of typing "rspec [name of spec file]". With all the caveats listed above.

# Method definitions must begin with "def" and end with "end" In between is a defined the sequence of actions you want your method to accomplish, in order. You need to define methods before you can use them.

# Local variables are a part of methods. Informally, if a method is a sentence, local variables are nouns.

#I'm confused why we aren't learning to write RSpec files now, they seem really important. Or are they going to be covered in the onsite portion?