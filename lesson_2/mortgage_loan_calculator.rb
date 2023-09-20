def valid_float?(num)
  Float(num)
rescue StandardError
  false
end

def prompt(message)
  puts "=> #{message}"
end

def getf(input_prompt)
  return_value = nil
  loop do
    prompt input_prompt
    return_value = gets.chomp
    if valid_float?(return_value)
      return_float = return_value.to_f
      if return_float < 0
        prompt "Input must be positive."
      else
        return return_value.to_f
      end
    else
      prompt "Invalid input. Please try again"
    end
  end
end

prompt "Welcome to the mortgage calculator!"

loan_amount = getf("What is the loan amount?")
apr = getf("What is the APR? (As a percentage)") / 100
loan_duration_in_years = getf("What is the loan duration? (in years)")

monthly_interest_rate = apr / 12
loan_duration_in_months = loan_duration_in_years * 12

monthly_payment = loan_amount *
                  (monthly_interest_rate / (1 -
                  ((1 + monthly_interest_rate)**(-loan_duration_in_months))
                                           )
                  )

prompt "Your monthly payment is #{monthly_payment}"
