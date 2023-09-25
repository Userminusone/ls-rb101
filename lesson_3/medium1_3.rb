def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(35)
p factors(-42)
p factors(0)

=begin

This program utilizes a while loop that only loops while the divisor is greater than 0, to ensure that the program handles negative numbers and 0 gracefully, since the factors method is not intended for finding the factors of 0 or negative numbers. The number % divisor part of the inline if expression is intended to ensure that only numbers that divide the number variable evenly are added to the factors array. The last line of this method ensures that the factors array is actually returned from the function to be used in other parts of the program.

=end