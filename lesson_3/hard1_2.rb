greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

=begin

This code will output
hi there
{:a=>"hi there"}
This is because when informal_greeting is assigned to greetings[:a], greetings[:a] and informal_greeting point to the same object, meaning any modification made to informal_greeting will also modify greetings[:a]. In this case, informal_greeting is modified via the << operator, which, in this case, appends ' there' to informal_greeting. Thus, when the program puts greetings, it reflects the modification made to informal_greeting.

=end