advice = "Few things in life are as important as house training your pet dinosaur."

if advice.match?("dino")
  puts 'This string contains "dino"!'
else
  puts 'This string does not contain "dino".'
end

=begin

This program outputs 'This string contains "dino"!'. The reason for this is that the match? method returns true whenever the pattern provided to it has a match in the calling string. In this case, the pattern is simply the string "dino", meaning advice.match?("dino") returns true if the advice string has any instances of the substring "dino". One issue with checking the advice string for the word "dino" in this way is the edge case in which the string contains a bigger word that contains the substring "dino", such as the word "dinosaur". To mitigate this, one would have to include extra logic to determine if the matched substring isn't already part of a larger word.

=end