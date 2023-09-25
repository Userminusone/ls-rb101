flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

p flintstones

=begin

This program outputs ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino"]. This program demonstrates the '<<' operator on arrays, which can be used to add new elements to the end of an array. It's obvious that '<<' is a destructive method and modifies its caller, as it adds a new item to the calling object.

=end