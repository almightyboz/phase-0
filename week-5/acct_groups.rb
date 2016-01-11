#Assignment 5.6 - Create Accountability Groups
#
#PSEUDOCODE
#input - list of multiple names
# randomize list of names (optional)
# create empty container object - will be filled with group-group number pairings
# set a counter
# determine how many groups of 5 there will be
# determine if there needs to be a group of three
# if there aren't 3 or 4 people left over when one divides the numbe of names by five, see how many people need to be "taken" from 5-member groups. (i.e. Determine how many 4-person groups there will be)
# Make group of three
# make however many groups of four
# =>take the next 3/4/5 names off the big list (as a group)
# => Add them to the container object as a group
# => assign the group a name and number
# => add that item onto the empty container object
#   remove those 3/4/5 names from the big list
# output  - Hash connecting the members of a group with the group number/name



#ORIGINAL SOLUTION
def find_smallest_group(length)
  remainder = length % 5
  if remainder == 0
    return [5, 0]
  elsif remainder == (3 || 4)
    return [remainder, 0]
  else
    diff = 3 - remainder
    return [3, diff]
  end
end

def make_group_hash(list)
  list = list.shuffle
  answer = Hash.new
  small_group = []
  group_counter = 2
  smallest_group = find_smallest_group(list.length)[0]
  groups_of_four = find_smallest_group(list.length)[1]
  small_group.push(list[0..(smallest_group-1)])
  answer["Group 1"] = small_group
  list = list[smallest_group..-1]

  groups_of_four.times do
    sublist = []
    sublist.push(list[0..3])
    answer["Group " + group_counter.to_s] = sublist
    list = list[4..-1]
    group_counter += 1
  end
  while list.length > group_counter
    sublist = []
    sublist.push(list[0..4])
    answer["Group " + group_counter.to_s] = sublist
    group_counter += 1
    list = list[5..-1]
  end
  return answer
end









#REFACTORED SOLUTION
def find_smallest_group(length)
  remainder = length % 5
  if remainder == 0
    return [5, 0]
  elsif remainder == (3 || 4)
    return [remainder, 0]
  else
    diff = 3 - remainder
    return [3, diff]
  end
end

def make_group_hash(list)
  list = list.shuffle
  answer = Hash.new
  small_group = []
  group_counter = 2
  smallest_group = find_smallest_group(list.length)[0]
  groups_of_four = find_smallest_group(list.length)[1]
  small_group.push(list[0..(smallest_group-1)])
  answer["Group 1"] = small_group
  list = list[smallest_group..-1]

  groups_of_four.times do
    sublist = [0..(groups_of_four*4)]
    sublist.push(list[0..3])
    answer["Group " + group_counter.to_s] = sublist
    list = list[4..-1]
    group_counter += 1
  end

  while list.length > group_counter
    sublist = []
    sublist.push(list[0..4])
    answer["Group " + group_counter.to_s] = sublist
    group_counter += 1
    list = list[5..-1]
  end
  return answer
end



# sample_names = [ "Heather Conklin", "Ian Wudarski", "Ieronim Oltean", "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Mickey Mouse", "Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathan Case" ]
# puts sample_names.length

# puts make_groups(sample_names)

#NEW PSEUDOCODE
# input list of names (there are x many names on the list)
#determine how many groups of five there can be (length / 5)
# determine if there

#output a data structure of small groups of people

# The most difficult part was finding a good way to test my solution. I was very tempted to submit the code without checking to see if it worked, but that's not my wheelhouse. I was also perversely attracted to making mine output a hash of group names and physical groups, not realizing that MVP means that it doesn't need to be particularly sophisticated. I submitted that code above anyway, though. I could have spent less time building an array of arrays, but I chose to do it the way I did because the hash would be a more stable and comprehensive data structure. And I used the modulus because I thought that would solve the problem in a very comprehensive way.
#I didn't have time to refactor my solution because I made it too complex, and I'm not sure how to. I regret that. I don't think that mine is a good MVP product. In pursuit of making a really good product, the code looks sloppy, and I don't have the time or ability to make it less so. Not having a spec file made this challenge a lot harder, because I'm still not sure how well my solution serves in the real world. I tried to write one, but that took too long as well.
# I like to think that I learned not to bite off more than I can chew, but I still do that all the time. Maybe to run code like this past a guide first.