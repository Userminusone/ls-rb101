def tricky_method(a_string_param, an_array_param)
  [a_string_param + "rutabaga", an_array_param + ["rutabaga"]]
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin

This program outputs
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins", "rutabaga"]
This is because the method trick_method was modified to return modified values for the parameters, instead of modifying the parameters directly. In this program, we assigned my_string and my_array to the return value of tricky_method via multiple assignment, which is why the variables are modified by the time they are being printed to the screen. The program reads better when programmed this way as it is more obvious where the modification of the my_string and my_array variables occurs.

=end