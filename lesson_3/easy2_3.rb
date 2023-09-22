ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
p ages

=begin

This program outputs {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}. The destructive method merge! adds all the key value pairs from the argument into the caller, which modifies the caller to contain all the key value pairs of the argument. The non destructive counterpart merge simply creates a new hash containing all the key value pairs of the caller and the argument and returns the new hash.

=end