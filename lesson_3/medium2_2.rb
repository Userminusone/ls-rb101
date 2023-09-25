a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin

In this code, a.object_id, b.object_id, and c.object_id will all return the same value. This is because Integers are immutable, and thus there can only be one instance of some integer (say 42), with its own object id.

=end