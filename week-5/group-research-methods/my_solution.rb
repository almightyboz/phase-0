# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# I am person 1

########################################################

#PSEUDOCODE
# create empty list
# check each item on list in turn
#   if the letter is in the word
#     add word to the blank list
#   else
#     next
# return the not so blank list

# #ORIGINAL SOLUTION
def my_array_finding_method(source, thing_to_find)
  answer_array = []
  source.each do |item|
    if item.to_s[thing_to_find]
      answer_array << item
    end
  end
  return answer_array
end

# #REFACTORED SOLUTION
def my_array_finding_method(source, thing_to_find)
  source.select {|item| item.to_s[thing_to_find]}
end

########################################################

#PSEUDOCODE
#create empty list of answers
# sort through each hash pairing
#   identify the value of each pairing as it's iterated
#   test if the value is the same as the thing to find
#     if it is, add it to the empty list
#     else, just keep going through
# return the list of answers

# #ORIGINAL METHOD
def my_hash_finding_method(source, thing_to_find)
  answer_array = []
  source.each do |key, value|
    if value == thing_to_find
      answer_array << key
    end
  end
  return answer_array
end

# #REFACTORED METHOD
def my_hash_finding_method(source, thing_to_find)
  source.select {|key, value| value == thing_to_find}.keys
end


########################################################

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# My array finding method first creates an empty list that I will populate with the correct answers. Then I perform a check on each list item in turn. When I perform the check, I'm testing if the "the thing to find" string is contained within that particular list item. If it is, I take that list item (converted to a string) and add it to my answer list. If that particular item doesn't have the search string, the check is completed and the computer moves to the next word on the source list. Once I've tested every individual object on my source list, I output the list of words that contain the thing to find.
#
#My hash finding method performs a check by iterating through each key-value pairing in the source hash. Specifically, the check is whether the thing we want to find is identical to a pairing's value. (I know this because the test string, pet names are keys and their ages are values.) If a pairing's value is identical to the thing to find, I add the pairing's key to a list. After I've iterated through every pairing, I return the list of correct answers.
#
# I use ctrl+f (excessively) to search through the ruby docs for key words. That way I can mentally connect several methods that operate along similar lines. And when I have trouble understanding a concept, I usually just copy the words into google and add "ruby", and read the first three results I get. Especially if it's StackOverflow posts. Because the people there 1) use specific examples of how a piece of code is used on a problem and 2) suggest different ways of utilizing different methods and approaches on the same problem. That helps me understand how a methods *is* used, and the Ruby Docs provide the intellectual context for how that same method *should be* used.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# I learned to post early and often, as they say, and to compare different online sources for good information of methods, and practical uses of them.
#
#
# Status API Training Shop Blog About Pricing
# © 2016 GitHub, Inc. Terms Privacy Security Contact Help