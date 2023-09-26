def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin

This program outputs
one is: one
two is: two
three is: three
This is because, within the mess_with_vars method, none of the parameters are actually mutated. The parameters are merely reassigned to new string literals, which doesn't change the values of the original arguments passed into the mess_with_vars method. For this reason, the one, two, and three variables retain their values of "one", "two", and "three", respectively, which results in the program's output.

=end