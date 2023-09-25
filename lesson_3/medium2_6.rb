def color_valid_long(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
  color == "blue" || color == "green"
end


puts color_valid_long("red")
puts color_valid("red")
puts ""
puts color_valid_long("green")
puts color_valid("green")
puts ""
puts color_valid_long("blue")
puts color_valid("blue")
puts ""

=begin

In this program, color_valid is a way to simplify the color_valid_long method. This is because the condition color == "blue" || color == "green", which is used to determine whether the method should return true or false, already returns true or false, meaning that its return value can be used directly. This results in a much clearer and more concise method.

=end