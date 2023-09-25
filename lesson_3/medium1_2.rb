puts "the value of 40 + 2 is " + (40 + 2) rescue puts "There was an error!"

puts "the value of 40 + 2 is " + (40 + 2).to_s rescue puts "There was an error!"

puts "the value of 40 + 2 is #{40 + 2}" rescue puts "There was an error!"

=begin

This program outputs
There was an error!
the value of 40 + 2 is 42
the value of 40 + 2 is 42
In this case, there is an error in the first statement, which results from Ruby trying to concatenate a String and an Integer, which doesn't work, and results in the error message "TypeError: no implicit conversion of Integer into String". The two possible ways to fix this are to convert the integer addition expression to a string, which line 3 does, or to include the integer addition expression in the string as string interpolation, which line 5 does.

=end