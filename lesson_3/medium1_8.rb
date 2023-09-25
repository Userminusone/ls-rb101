def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

=begin

This program will output "paper". This is because in the expression rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock"), the call to rps("rock", "paper") will return "paper", and the call to rps("rock", "scissors") will return "rock", resulting in the expression being equivalent to rps(rps("paper", "rock"), "rock"). The call to rps("paper", "rock") will return "paper", resulting in the expression being equivalent to rps("paper", "rock"), which, as established before, will return "paper", meaning that the final result of the expression is "paper".

=end