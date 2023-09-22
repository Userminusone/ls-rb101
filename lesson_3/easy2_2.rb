munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase!
puts munsters_description

munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize!
puts munsters_description

munsters_description = "The Munsters are creepy in a good way."
munsters_description.downcase!
puts munsters_description

munsters_description = "The Munsters are creepy in a good way."
munsters_description.upcase!
puts munsters_description

=begin

This program outputs
tHE mUNSTERS ARE CREEPY IN A GOOD WAY.
The munsters are creepy in a good way.
the munsters are creepy in a good way.
THE MUNSTERS ARE CREEPY IN A GOOD WAY.
This program demonstrates four methods for manipulating case: swapcase!, capitalize!, downcase!, and upcase!, which are all destructive methods which modify the caller. (These methods also have non destructive counterparts: swapcase, capitalize, downcase, and upcase) swapcase! swaps the case of every letter, meaning that for each character, if it is a lowercase letter, it is swapped with its uppercase counterpart, and if it is an uppercase letter, it is swapped with its lowercase counterpart. capitalize! swaps the first character with its uppercase counterpart if it is a lowercase letter. downcase! swaps every character with its lowercase counterpart if it is an uppercase letter. upcase! swaps every character with its uppercase counterpart if it is a lowercase letter.

=end