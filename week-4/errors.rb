# Analyze the Errors

# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase
cartmans_phrase = "Screw you guys " + "I'm going home."
# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file is errors.rb
# 2. What is the line number where the error occurs?
# Line 170
# 3. What is the type of error message?
# It's a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# "unexpected end-of-input, expecting keyword_end."" The interpreter was expecting an end keyword after the end of the input, and did not find one.
# 5. Where is the error in the code?
# There should be an "end" for the while loop and for the method, but there is only one.
# 6. Why did the interpreter give you this error?
# It scanned to the very end of the file to make sure that I hadn't placed the "end" in an unusual place because it was a long method call or something. Ruby needs the end keyword especially to indicate that a loop is ending.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 35
# 2. What is the type of error message?
# A name error "in `<main>'", a fundamental error that doesn't occur within a method or class.
# 3. What additional information does the interpreter provide about this type of error?
# "undefined local variable or method `south_park' for main:Object (NameError)" south_park must be a variable or method that hasn't been defined upstream in the code.
# 4. Where is the error in the code?
# There needs to be more code saying what kind of object south_park should be.
# 5. Why did the interpreter give you this error?
# It's a foundational error in Ruby, hence main. The way that the text is formatted is that of a variable or method (i.e. it is a blob of text that begins with a lowercase letter)

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line 50
# 2. What is the type of error message?
# A no method error in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# It is a method call for which there is no defined method.
# 5. Why did the interpreter give you this error?
# The formatting of the text indicates that it is a method call. See line 46 for what it means to be a variable or a method. But line 50 cannot be a variable, only method calls end with a pair of parentheses. There would need to be code upstream defining the operations of the cartman method.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 65
# 2. What is the type of error message?
# An argument error within `cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
# The method definition has the method cartmans_phrase has 0 parameters. But the call in line 69 has 1 argument, which cartmans_phrase cannot take.
# 5. Why did the interpreter give you this error?
# It needs to say how many arguments are given versus how many the method as it is takes in a concise way.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# Line 88.
# 2. What is the type of error message?
# An error in the logical steps within the cartman_says method.
# 3. What additional information does the interpreter provide about this type of error?
# The call on line 88 gave an inappropriate number of arguments, 0 instead of 1.
# 4. Where is the error in the code?
# The method call on line 88 needs an argument.
# 5. Why did the interpreter give you this error?
# Having a method take a parameter requires the method's call to assign an argument as one. In this case, there's nothing to print, the method has no point.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 105.
# 2. What is the type of error message?
# An argument error within cartmans_lie
# 3. What additional information does the interpreter provide about this type of error?
# The wrong number of arguments were used in the method call, 1 instead of 2.
# 4. Where is the error in the code?
# Either the method call needs to be changed so it has a name, or the definition should just have a "lie" parameter.
# 5. Why did the interpreter give you this error?
# Method calls are required to have the same number of arguments as specified in the method's definition.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124.
# 2. What is the type of error message?
# A type error.
# 3. What additional information does the interpreter provide about this type of error?
# That a string cannot automatically be coerced (changed) into an integer. At least not without perfect syntax and being told that it should be.
# 4. Where is the error in the code?
# Ruby was expecting this to be a mathematical equation with the 5 and the *. "Respect my authoritay" is not a mathematical statement.
# 5. Why did the interpreter give you this error?
# It read the first two pieces of the line as a mathematical statement, and strings cannot be multiplied or added like raw numbers could be.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139.
# 2. What is the type of error message?
# A mathematical error, division by zero.
# 3. What additional information does the interpreter provide about this type of error?
# That they are trying to divide by zero.
# 4. Where is the error in the code?
# The value of amount_of_kfc_left is invalid.
# 5. Why did the interpreter give you this error?
# Ruby cannot divide a number by zero, it cannot be done mathematically.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155.
# 2. What is the type of error message?
# An error in loading.
# 3. What additional information does the interpreter provide about this type of error?
# It cannot load the file "cartmans-essay.md"
# 4. Where is the error in the code?
# It is telling the interpreter to use a file with a certain name, but there is no such file in the directory.
# 5. Why did the interpreter give you this error?
# It needs to know the exact name of files and have those files in the same directory in which one is working, otherwise it cannot identify which file it should use.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# The respect my authoritay error confused me most, because I didn't read the code correctly at first. And because once I did, it didn't make sense to me because it's a weird thing to say. But I figured it out onced I realized that the 5 wasn't a typo, and that it was a mathematical statement.
# I was able to determine why the errors are phrased that was most of them to my satisfaction. But I don't know if I have described them in a way that makes sense to non-technical folks.
# I'll be honest, I was confused by this assignment. In theory, the place of the error in the code is very different than explaining why the interpreter gave me the error. However, in practice, explaining the two answers without repeating myself was hard.