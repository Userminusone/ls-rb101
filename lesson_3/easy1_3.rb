advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important","urgent")

puts advice

=begin

This code outputs "Few things in life are as urgent as house training your pet dinosaur.", because advice (which is initially set to "Few things in life are as important as house training your pet dinosaur"), calls the gsub! method, which modifies itself. Since the first argument passed to gsub! is "important", the advice string replaces all instances of "important" with the next argument, which is "urgent".

=end