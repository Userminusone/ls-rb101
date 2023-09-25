a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin

In this program, a.object_id and c.object_id will print the same value, while b.object_id will print a different value. This is because a and b are both assigned to string literals, which always get a brand new object id upon being created. On the other hand, c is assigned to a, meaning they both point to the same value and thus have the same object id.

=end