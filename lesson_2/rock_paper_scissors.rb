CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  difference = (CHOICES.index(player) - CHOICES.index(computer)) % 3

  case difference
  when 0
    puts "It's a tie!"
  when 1
    puts "You won!"
  when 2
    puts "You lost :("
  end
end

loop do
  choice = nil
  loop do
    prompt "Choose one: #{CHOICES.join(', ')}"
    choice = gets.chomp
    if CHOICES.include?(choice)
      break
    else
      prompt "This isn't a valid choice!!"
    end
  end

  computer_choice = CHOICES.sample

  puts "You chose: #{choice}, computer chose: #{computer_choice}"

  display_results(choice, computer_choice)

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing!"
