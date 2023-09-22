famous_words = "seven years ago..."

puts "Four score and " + famous_words
puts "Four score and " << famous_words

=begin

This program outputs "Four score and seven years ago..." twice, since both the + and << operators concatenate strings. However, there is an important difference between the two. The + operator creates a new concatenated string using its arguments and returns the new string, but the << operator appends the second string to the end of the first string. In other words, while + and << both concatenate strings, << is a destructive method which modifies its caller while + is a non destructive method which doesn't modify its caller. 

=end