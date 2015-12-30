# Leap Years

# I worked on this challenge with: Kathryn

# Your Solution Below

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 400 == 0
    return true
  elsif year % 4 == 0 && year % 100 == 0
    return false
  else
    return false
  end
end

# def leap_year?(year)
#   if year % 4 == 0
#     if year % 100 != 0
#       return true
#     elsif year % 100 == 0 && year % 400 != 0
#       return false
#     elsif year % 400 == 0
#       return true
#     end
#   else
#     return false
#   end
# end


