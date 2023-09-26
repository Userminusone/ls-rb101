def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
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
one is: two
two is: three
three: is one
This is because the parameters in the mess_with_vars method all call their own mutating method on themselves, which causes them to be mutated. As a result, the original arguments passed into the mess_with_vars method are also mutated because each parameter points to the same object as its respective argument. For this reason, the one, two, and three variables are modified via the invocation of mess_with_vars with one, two, and three as the parameters, which is reflected in the program's output.

=end