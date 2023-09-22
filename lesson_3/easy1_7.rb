flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
p flintstones

=begin

This method outputs ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]. This is because flintstones calles the flatten! method, a destructive method which replaces all nested arrays with their raw values. The flatten! method effectively converts an n-dimensional array into a 1-dimensional array without getting rid of any individual element in any of the innermost nested arrays (which don't contain any arrays of their own).

=end