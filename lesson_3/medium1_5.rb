=begin

#this code will not work
limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

=end

limit = 15

def fib(first_num, second_num,limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

=begin

The code in the comment at the top of this program won't work because the fib method has its own self-contained scope and thus cannot access the limit variable because it is only defined outside the method. To fix this, the fib method must have an additional limit parameter that the method can access, and then calls to the method must provide some value (such as the limit variable we already defined) as the third argument in the method call.

=end