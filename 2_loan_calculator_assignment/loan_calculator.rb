require 'yaml'
MESSAGES = YAML.load_file('loan_calculator.yml')

def clean_screen
  system('clear') || system('cls')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def valid_confirmation?(answer)
  ['y', 'n'].include?(answer)
end

def display_welcome
  clean_screen
  prompt(MESSAGES['welcome'])
end

def get_name
  prompt(MESSAGES['name'])
  name = ''
  loop do
    name = Kernel.gets().chomp().strip().capitalize()

    break unless name.empty? || name =~ /\d/
    prompt(MESSAGES['valid_name'])
  end
  name
end

def display_greeting(user_name)
  prompt(format(MESSAGES['greeting'], name: user_name))
end

def display_loan_prompt
  prompt(MESSAGES['loan_amount'])
end

def get_loan_amount
  loan_amount = ''
  loop do
    loan_amount = Kernel.gets().chomp().strip()
    loan_amount.slice!(0) if loan_amount.start_with?('$')

    break if valid_number?(loan_amount)
    prompt(MESSAGES['valid_number'])
  end
  loan_amount
end

def display_apr_prompt
  prompt(MESSAGES['apr_msg'])
end

def get_apr
  apr = ''
  loop do
    apr = Kernel.gets().chomp().strip()
    apr.chop! if apr.end_with?('%')

    break if valid_number?(apr)
    prompt(MESSAGES['valid_number'])
  end
  apr
end

def display_loan_duration_prompt
  prompt(MESSAGES['loan_duration_msg'])
end

def get_loan_duration
  loan_duration = ''
  loop do
    loan_duration = Kernel.gets().chomp().strip()

    break if valid_number?(loan_duration)
    prompt(MESSAGES['valid_number'])
  end
  loan_duration
end

def confirm_loan_prompt(loan)
  prompt(format(MESSAGES['loan_confirmation'], loan_amount: loan))
end

def confirm_apr_prompt(annual_percentage)
  prompt(format(MESSAGES['apr_confirmation'], apr: annual_percentage))
end

def confirm_duration_prompt(duration)
  prompt(format(MESSAGES['duration_conf'], loan_duration: duration))
end

def confirmation_prompt
  prompt(MESSAGES['confirmation_msg'])
end

def get_confirmation
  confirmation = ''
  loop do
    confirmation = Kernel.gets().chomp().downcase()
    break if valid_confirmation?(confirmation)
    prompt(MESSAGES['invalid_confirmation'])
  end
  confirmation
end

def input_to_float(input)
  input.to_f
end

def input_to_integer(input)
  input.to_i
end

def monthly_interest_rate(annual_percentage, loan)
  annual_percentage / loan
end

def monthly_calculation(loan, monthly_interest, duration)
  loan * (monthly_interest / (1 - (1 + monthly_interest)**(-duration)))
end

def display_result(month_payment)
  prompt(format(MESSAGES['result'], monthly_payment: month_payment.round(2)))
end

def another_calculation_prompt
  prompt(MESSAGES["another_calculation"])
end

def get_another_calculation
  response = ''
  loop do
    response = Kernel.gets().chomp().downcase()
    break if valid_confirmation?(response)
    prompt(MESSAGES['invalid_confirmation'])
  end
  response
end

def yes_response?(res)
  res == 'y'
end

def display_goodbye(user_name)
  clean_screen
  prompt(format(MESSAGES['goodbye'], name: user_name))
  sleep 5
end

display_welcome
name = get_name

display_greeting(name)

loop do
  loan_amount = ''
  apr = ''
  loan_duration = ''
  loop do
    display_loan_prompt
    loan_amount = get_loan_amount

    display_apr_prompt
    apr = get_apr

    display_loan_duration_prompt
    loan_duration = get_loan_duration

    clean_screen

    confirm_loan_prompt(loan_amount)
    confirm_apr_prompt(apr)
    confirm_duration_prompt(loan_duration)
    confirmation_prompt

    confirmation = get_confirmation

    break if confirmation == 'y'
    clean_screen
  end

  loan_amount = input_to_float(loan_amount)
  apr = input_to_float(apr)
  loan_duration = input_to_integer(loan_duration)

  mir = monthly_interest_rate(apr, loan_amount)
  monthly_payment = monthly_calculation(loan_amount, mir, loan_duration)

  display_result(monthly_payment)

  another_calculation_prompt
  response = get_another_calculation

  break unless yes_response?(response)
  clean_screen
end

display_goodbye(name)
