if false
  greeting = "hello world"
end

p greeting

=begin

This code will output "nil". This is because if statements do not create a new scope, meaning the greeting variable is still accessible outside of the if statement, even if the statement initializing greeting to "hello world" isn't executed, which is the case here. Since greeting is accessible but does not have any value, it will simply contain the value "nil", which is what will be printed here.

=end