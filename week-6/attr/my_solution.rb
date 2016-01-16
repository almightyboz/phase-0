#Attr Methods

# I worked on this challenge by myself.

# I spent 2.5 hours on this challenge.

##############################################
# Pseudocode

# Input: My name, as embedded in the function
# Output: A personalized greeting with my name
# Steps:
# Design a class that exists to store and use my name
# create a variable that stores my name
# make the aforementioned variable one that can be accessed by other classes
# Create a class that will be used to greet people
# Make a specific use of the greeting class trigger the creation of a specific use of the name class.
# Gain access to my name, as it is stored to the other class
# Write a friendly greeting that will show on the user's screen, using my name
# (Driver code), create an instance of the Greeting class
# invoke the operation of the greeting class that will print the friendly personalized greeting

##############################################
class NameData

  attr_reader :name
  def initialize
    @name = "Emily Bosakowski"
  end

end

class Greetings

  def initialize
    @my_name = NameData.new
  end

  def hello
    me = @my_name.name
    puts "Good morning, #{me}."
  end

end

greet_me = Greetings.new
greet_me.hello


##############################################

#RELEASE 1
# What are these methods doing?
# Half of the methods in this class (i.e. what_is_name, what_is_age, what_is_occupation )take no input, they return the instance variable that's already defined. (Which is why lines The other half take input and change the an instance variable to the inputted value using the = format instead of the standard argument format*.  (E.g. change_my_name=() changes the instance variable @name within the class.) And the print_info() method prints the returned values.

##############################################

#RELEASE 2
# The new class calls a reader method on the instance variable @age.  It means that I no longer need to have a method called "age" that returns @age in order to view @age from outside the class. I ran the code after commenting out the attr_reader on line 5, and received the error message "undefined method `age' for #<Profile:0x007fa0c9030e00> (NoMethodError)."

##############################################

#RELEASE 3
# The difference is that attr_reader :age is joined by an attr_writer call on age. The class no longer needs the change_my_age function. Line 68 calls age like it would a function. Doing so changes the value that was stored in the instance variable called @age. In a more specialized way of thinking, it writes over the original value that was initialized on line 8. The code is simpler because it occupies fewer lines. But, I think that "age" is a much less descriptive name for the action that changes the @age instance variable than change_my_age.
# My terminal output the following error message when I commented out line 6, the attribute writer: "release_3.rb:68:in `<main>': undefined method `age=' for #<Profile:0x007f91a2830ff0> (NoMethodError)." I interpret this as such:
#And the following message when I ran the code after commenting out line 5, the attribute reader: "release_3.rb:52:in `<main>': undefined method `age' for #<Profile:0x007f8bf1831010> (NoMethodError)."

##############################################

#RELEASE 4
# This doesn't operate differently from the code in release 3. That's because the attr_accessor method allows for reading and writing the instance variable @age outside the class. It's one fewer extraneous line of code, so it reads cleaner than release 3. If you're curious to know what happens when only the reader method (or only the writer method) is called on this script as is, please consult the rest of my notes in release 3.

##############################################

#RELEASE 6 - REFLECTION
# A reader method allows the user to access (ie return or view) the instance variable of a class from outside the class itself. But one cannot change the instance variable outside the class. A writer method, on the other hand, allows one to change but not access the instance variable from outside the class.
# Attr methods save space and time by eliminating the neccesity to write a separate method within the class that either 1) displays the instance variable to the console, 2) changes the instace variable from the driver code or 3) both 1 and 2. One can write multiple calls to the attr method on the same line, no less. It keeps code DRY and the computer runs it slightly faster than manually defining the accessor. But one should be careful if, say, one uses attr_reader when working with senstive data that the user should not have access to in the driver code, or attr_writer with a very tricky operation that will fall apart if the wrong information is written to the instance variable. Or both scenarios, if one is using attr_accessor.
# It confuses me to know that attr methods work in concert with the initialize method, but they don't replace each other, either. I am still trying to understand which method does what to the instance variable.

