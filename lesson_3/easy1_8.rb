flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
barney = flintstones.assoc("Barney")

p barney
=begin

This program outputs ["Barney, 2"]. The assoc method returns an array that contains the key given by the argument, as well as its associated value. This only works if the argument is a key of the calling hash. It's important to note that the assoc method is non destructive, and doesn't do anything to the calling hash.

=end