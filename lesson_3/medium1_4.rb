def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

buffer1 = (1..5).to_a
buffer2 = (6..10).to_a

puts "buffer1 before: #{buffer1}"
puts "rolling_buffer1 call: #{rolling_buffer1(buffer1,5,37)}"
puts "buffer1 after: #{buffer1}"

puts "buffer2 before: #{buffer2}"
puts "rolling_buffer2 call: #{rolling_buffer2(buffer2,5,37)}"
puts "buffer2 after: #{buffer2}"

=begin

These methods, well similar, are different in that rolling_buffer1 uses a destructive method for adding elements to an array, while rolling_buffer2 uses a non-destructive method for adding elements to an array. In practice, this means that rolling_buffer1 modifies the argument passed into the buffer parameter AND returns the buffer, while rolling_buffer2 doesn't modify any arguments and only returns a new buffer. In other words, both methods return a value, but rolling_buffer1 also has side effects, meaning that rolling_buffer2 is the better implementation since methods which return a value and have side effects should generally be avoided.

=end