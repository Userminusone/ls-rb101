flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.concat(%w(Dino Hoppy))

p flintstones

=begin

This program outputs ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]. This program demonstrates concat method, which is a destructive method which adds all elements from its arguments to the calling array. In this case, the flinstones array adds "Dino" and "Hoppy" to itself via the concat method, with the parameter %w(Dino Hoppy) passed in.

=end