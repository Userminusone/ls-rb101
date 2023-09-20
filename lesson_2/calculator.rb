# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = gets
# puts answer

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  operation_to_message_hash = { op1: 'Adding',
                                op2: 'Subtracting',
                                op3: 'Multiplying',
                                op4: 'Dividing' }
  operation_to_message_hash["op#{op}".to_sym]
end

prompt "Welcome to Calculator! Enter your name:"

name = nil
loop do
  name = gets.chomp

  if name.empty?
    prompt "Please use a valid name."
  else
    break
  end
end

prompt "Hi #{name}!"

loop do
  number1 = nil
  loop do
    prompt "What's the first number?"
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt "That's not a valid number. Try again"
    end
  end

  number2 = nil
  loop do
    prompt "What's the second number?"
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt "That's not a valid number. Try again"
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt operator_prompt

  operator = nil
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "That's not a valid operator. Please enter 1, 2, 3, or 4"
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt "The result is #{result}"

  prompt "Would you like to perform another calculation?"
  answer = gets.chomp.downcase

  break unless answer.start_with?('y')
end

prompt "Thanks for using the calculator!"
