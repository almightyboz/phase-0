# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# an array
# What is the output? (i.e. What should the code return?)
# an array with at least one element
# What are the steps needed to solve the problem?

# create empty list of pairs to be populated with values and frequencies
# set up a loop through each number that will terminate when there are no more values in the list
#   IF number doesn't exist as a key in list of pairs
#     write the number as the key in the pair pairing, make the value the frequency
#   ELSE
# =>  add one to the numbers of times that number has been used
#   END LOOP
# create new empty answer list
# identify max value of the list of frequency
# loop over the list of frequency-pairs
# => identify which values are identical to the max value
# => write the number(s) paired with the max frequency to the answer list
# return answer list

# 1. Initial Solution

def mode(list)
  frequency_hash = Hash.new
  list.each do |item|
    if frequency_hash.has_key?(item)
      frequency_hash[item] += 1
    else
      frequency_hash[item] = 1
    end
  end
  answer_array = []
  max_value = frequency_hash.max_by{|k, v| v}[1]
  frequency_hash.each do |key, value|
    if value == max_value
      answer_array << key
    else
      next
    end
  end
  return answer_array
end


# 3. Refactored Solution

def mode(list)
  frequency_hash = Hash.new
  list.each do |item|
    if frequency_hash.has_key?(item)
      frequency_hash[item] += 1
    else
      frequency_hash[item] = 1
    end
  end
  answer_array = []
  max_value = frequency_hash.values.max
  frequency_hash.each do |key, value|
    if value == max_value
      answer_array << key
    end
  end
  return answer_array
end

def mode(array)
  frequency_hash = array.group_by
  max_value = hash.max_by{|key,value| value.size}[1].size
  hash.find_all{|key,value| value.size == max_value}.flatten.uniq
end

# 4. Reflection

# We decided to represent it as a hash. A hash can't represent order like an arr can, but that wasn't important to our needs. We stored the number/word in the hash's key, and that term's frequency as the value. We reasoned that this allowed for cases where two terms had the same frequency, because keys have to be distinct, but values can repeat.
# Very much more. I think it's practice that helps.
# I was very unsure about how to code what would become line 47. (Which I refactored into line 71.) I thought it could be done without iterating, and I was right. We also had problems with line 41, I wasn't sure if it would work as well as it did. Now I know that one can change a value in a hash with mathematical operators.
# We used each loops, if loops, max, max_by, and a new (to me) method called has_key?(). I learned more about max() and values() while refactoring. They were all good methods and I had minimal trouble implementing them. I found more when I was googling other solutions to this problem which used (among other thingsx) size, find_all, flatten, and uniq.