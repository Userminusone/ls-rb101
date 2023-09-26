def is_an_ip_number?(input_string)
  integer_value = input_string.to_i
  (integer_value.to_s == input_string) && (integer_value >= 0) && (integer_value <= 255)
end

=begin

The following implementation is broken:

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

=end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

puts dot_separated_ip_address?("10.-3.4.20")
puts dot_separated_ip_address?("30.270.311.41")
puts dot_separated_ip_address?("1pieceotoast.47eggsalad.21pilots.7/4")
puts dot_separated_ip_address?("10.4.5.11")
puts dot_separated_ip_address?("4.5.5")
puts dot_separated_ip_address?("1.2.3.4.5")

=begin

This code will output
false
false
false
true
false
false
The dot_separated_ip_adress? method has been fixed from its broken implementation specified in the multiline comment above, to ensure that it returns false whenever there aren't exactly 4 numbers in the IP address string, and whenever the IP address contains invalid numbers.

=end