#Triangle Side Lengths


# I worked on this challenge with: Kathryn.

# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
    return false
  elsif a == b && b == c
    return true
  elsif a + b > c && a + c > b && b + c > a
    return true
  else
    return false
  end
end