numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin

This program will output
1
2
2
3
The reason for this is that the .uniq call is a non destructive method, meaning it does not modify the caller in any way. Furthermore, calling puts on an array prints every element of that array on a separate line, rather than printing them in a single line list. If .uniq! were called instead, the program would output
1
2
3
, since .uniq! is destructive and thus modifies the caller. Additionally, if p numbers were called instead of puts numbers, the program would output [1, 2, 3] with both of these changes, since p outputs a more direct representation of an object.

=end