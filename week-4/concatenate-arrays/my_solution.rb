# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  final = []
  array_1.each do |x|
    final << x
  end
  array_2.each do |x|
    final << x
  end
  return final
end