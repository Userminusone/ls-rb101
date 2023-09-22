ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
if ages.include?("Spot")
  puts "Spot is part of the family!"
else
  puts "Spot isn't in the family :("
end

=begin

This program outputs "Spot isn't in the family :(" . The include? method returns true if the argument is a key in the hash that invokes include?, and returns false otherwise. In this case, "Spot" isn't a key in the ages hash, so ages.include?("Spot") returns false and the program moves ot the else branch. has_key?, member?, and key? could also be used in this case, as they have the same functionality as include?.

=end