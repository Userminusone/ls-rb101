advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0,advice.index("house"))

p advice

=begin

This program will output
"Few things in life are as important as "
"house training your pet dinosaur."
This occurs because the slice! method removes a substring from the calling string then returns the substring. In this case, we have specified the substring to start at 0 and have a length of advice.index("house"), meaning that the substring will contain everything up to (but not including) the first instance of the word "house" in the string. Because of this, the program first outputs the substring that was returned, then prints out the original string, which is now missing that substring. Notably, slice! is a destructive method that modifies the caller, but there is a non-destructive variant, slice, which doesn't modify the caller whatsoever. In this case, the last line printed would just be "Few things in life are as important as house training your pet dinosaur.", the value of the original string, since slice would not modify the string unlike slice!.

=end