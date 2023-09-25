answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

=begin

This code will output 34. The reason for this is that the mess_with_it method doesn't actually modify its parameter, since the parameter is immediately reassigned using the += operator (since a += b is equivalent to a = a + b, meaning a is assigned to a completely different value). Additionally, the new_answer variable, which is assigned to the result of mess_with_it, isn't used anywhere in the program, and since the original answer variable still holds the value of 42, the program will output 42 - 8 which is 34.

=end