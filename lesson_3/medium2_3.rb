def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

=begin

This program outputs
String_arg_one looks like this now: pumpkins
String_arg_two looks like this now: pumpkinsrutabaga
This is because string_param_one is reassigned within the method, and thus is not modified, while string_param_two calls a destructive method on itself, meaning it is modified and thus modifies its corresponding argument passed to the tricky_method method, which in this case is string_arg_two. As a result, string_arg_one retains the value of "pumpkins" while string_arg_two is modified to have the value of "pumpkinsrutabaga".

=end