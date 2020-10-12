require 'yaml'
MESSAGES = YAML.load_file('loan_calculator.yml')

system 'clear'

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

    system 'clear'

    confirm_loan_prompt(loan_amount)
    confirm_apr_prompt(apr)
    confirm_duration_prompt(loan_duration)
    confirmation_prompt

    # prompt(format(MESSAGES['loan_confirmation'], loan_amount: loan_amount))
    # prompt(format(MESSAGES['apr_confirmation'], apr: apr))
    # prompt(format(MESSAGES['duration_conf'], loan_duration: loan_duration))
    # prompt(MESSAGES['confirmation_msg'])

    confirmation = ''
    loop do
      confirmation = Kernel.gets().chomp().downcase()
      break if valid_confirmation?(confirmation)
      prompt(MESSAGES['invalid_confirmation'])
    end

    break if confirmation == 'y'
    system 'clear'
  end

  loan_amount = loan_amount.to_f
  apr = apr.to_f
  loan_duration = loan_duration.to_i

  mir = apr / loan_amount

  monthly_payment = loan_amount * (mir / (1 - (1 + mir)**(-loan_duration)))

  prompt(format(MESSAGES['result'], monthly_payment: monthly_payment.round(2)))
  prompt(MESSAGES["another_calculation"])

  response = ''
  loop do
    response = Kernel.gets().chomp().downcase()
    break if valid_confirmation?(response)
    prompt(MESSAGES['invalid_confirmation'])
  end

  break unless response == 'y'
  system 'clear'
end

prompt(format(MESSAGES['goodbye'], name: name))
