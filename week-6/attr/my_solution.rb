#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end


##############################################
# Reflection

#RELEASE 1
# What are these methods doing?
# Half of the methods (i.e. what_is_name, what_is_age, what_is_occupation )take no input, they return the instance variable that's already defined. (Which is why lines The other half take input and change the an instance variable to the inputted value using the = format instead of the standard argument format*.  (E.g. change_my_name=() changes the instance variable @name within the class.) And the print_info() method prints the returned values.
###* what does that mean?
##############################################
#RELEASE 2
# The new class calls a reader method on the instance variable @age.  It means that I no longer need to have a method called age that returns @age in order to view @age from outside the class. I ran the code after commenting out line 5, and received the error message "undefined method `age' for #<Profile:0x007fa0c9030e00> (NoMethodError)." Accessing the instance variable from outside the class requires either

##############################################





##############################################




##############################################