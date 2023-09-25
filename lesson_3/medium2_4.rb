def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin

This program outputs
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins"]
This is because the first parameter, a_string_param, modifies itself via the destructive << method, while the second parameter, an_array_param, is not modified because it's reassigned with the = operator and does not refer to the same object anymore. For this reason, the first argument passed to tricky_method_two, which is my_string, is modified, while the second argument passed to trick_method_two, which is my_array, is not modified.

=end