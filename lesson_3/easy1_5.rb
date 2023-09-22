test_range = 10..100
test_value = 42

if test_range.cover? test_value
  puts "#{test_value} lies between #{test_range.first} and #{test_range.last}"
else
  puts "#{test_value} does not lie between #{test_range.first} and #{test_range.last}"
end

=begin

This code outputs "42 lies between 10 and 100". This occurs because the cover? method for ranges results in true when test_range invokes cover? with test_value as its argument. The cover? method returns true when its argument is greater than the minimum value of the caller and less than the maximum value of the caller. In this case, 42 is greater than 10 and less than 100, so test_range.cover? test_value returns true.

=end