numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
p numbers

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers

=begin

The delete_at method deletes the element from the caller at the index specified by the argument, meaning it is a destructive method which modifies the caller. In this case, numbers.delete_at(1) deletes the element from numbers at index 1, which is 2. This means that numbers will be equal to [1, 3, 4, 5] after this method invocation.

The delete method, however, deletes the first element from the caller which is equal to the argument, but, like delete_at, this is also a destructive method which modifies the caller. In this case, numbers.delete(1) deletes the first instance of 1 from the numbers array, meaning numbers will be equal to [2, 3, 4, 5] after this method invocation.

=end