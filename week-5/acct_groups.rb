#Assignment 5.6 - Create Accountability Groups
#
#PSEUDOCODE
#input - list of multiple names
# randomize list of names (optional)
# create empty container object - will be filled with group-group number pairings
# count how many people are in the original (big) list
# set a counter to begin at 1
# UNTIL there are between 3 and 5 unassigned names on the big list
# =>take the next 4-5 names off the big list (as a group)
# => Add them to the container object as a group
# => assign the group a name and number
# => add that item onto the empty container object
#   remove those 4-5 names from the big list
# output  - Hash connecting the members of a group with the group number/name


#FAILED EXPERIMENTS
# def make_groups(list)
#   list = list.shuffle
#   answer = Hash.new
#   group_counter = 1
#   while (list.length) > 9
#     sublist = []
#     sublist.push(list[0..4])
#     answer["Group " + group_counter.to_s] = sublist
#     group_counter+= 1
#     list = list[5..-1]
#   end
#   return answer
# end

# def find(list, size)
#   group_counter = 1
#   sublist = []
#   sublist.push(list[0..size])
#   hash["Group " + group_counter.to_s] = sublist
#   group_counter+= 1
#   list = list[(size+ 1)..-1]
#   return
# end

# def make_groups(list)
#   list = list.shuffle
#   answer = Hash.new

#   smallest =  list.length % 5
#   if smallest == (3 || 4 || 0)

#   else


#   while (list.length) > 9
#     sublist = []
#     sublist.push(list[0..4])
#     answer["Group " + group_counter.to_s] = sublist
#     group_counter+= 1
#     list = list[5..-1]
#   end
#   list.each_slice(2) {|slice| answer["FInal Group"] = slice}

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


# def find_smallest_group(length)
#   remainder = length % 5
#   if remainder == 0
#     return [5, 0]
#   elsif remainder == (3 || 4)
#     return [remainder, 0]
#   else
#     diff = 3 - remainder
#     return [3, diff]
#   end
# end

# def make_subgroup(list, size, how_many)
#   subgroup = []
#   how_many.times do
#     sublist = list.each_slice(size)
#     subgroup.push sublist
#   end
# end

# def make_groups(list)
#   big_list = []
#   smallest_group = find_smallest_group(list.length)[0]
#   groups_of_four = find_smallest_group(list.length)[1]

#   groups_of_four.times
# end

def find_group_size(length)
  five = length / 5
  remainder = length % 5
  if remainder == 0
    return [five, 0, 0]
  elsif remainder == (1 || 2)
  else









#REFACTORED SOLUTION





sample_names = [ "Heather Conklin", "Ian Wudarski", "Ieronim Oltean", "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Mickey Mouse", "Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathan Case" ]
puts sample_names.length

puts make_groups(sample_names)

#NEW PSEUDOCODE
# input list of names (there are x many names on the list)
#determine how many groups of five there can be (length / 5)

#output a data structure of small groups of people

# The most difficult part was finding a good way to test my solution. I was very tempted to submit the code without checking to see if it worked, but that's not my wheelhouse. I was also perversely attracted to making mine output a hash of group names and physical groups, not realizing that MVP means that it doesn't need to be particularly sophisticated. I submitted that code above anyway, though. I could have spent less time building an array of arrays, but I chose to do it the way I did because the hash would be a more stable and comprehensive data structure.