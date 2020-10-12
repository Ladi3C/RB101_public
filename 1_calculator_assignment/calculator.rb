require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Method Definitions

def clean_screen
  system('clear') || system('cls')
end

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_welcome
  clean_screen
  prompt(messages('welcome'))
end

def get_lang
  lang = ''
  loop do
    lang = gets().chomp()

    break if %w(1 2 3 4).include?(lang)
    prompt(messages('valid_language'))
  end
  lang
end

def lang_choice(language)
  case language
  when '1'
    language = 'en'
  when '2'
    language = 'es'
  when '3'
    language = 'fr'
  when '4'
    language = 'it'
  end
  language
end

def name_prompt(language)
  prompt(messages('name', language))
end

def get_name(language)
  name = ''
  loop do
    name = Kernel.gets().chomp().strip().capitalize()

    break unless name.empty?() || name =~ /\d/
    prompt(messages('valid_name', language))
  end
  name
end

def display_greeting(name, language)
  prompt(format(messages('greeting', language), name: name))
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def retrieve_first_number(language)
  number1 = ''
  loop do
    prompt(messages('first_num', language))
    number1 = Kernel.gets().chomp().strip()

    break if valid_number?(number1)
    prompt(messages('valid_number', language))
  end
  number1
end

def retrieve_second_number(language)
  number2 = ''
  loop do
    prompt(messages('second_num', language))
    number2 = Kernel.gets().chomp().strip()

    break if valid_number?(number2)
    prompt(messages('valid_number', language))
  end
  number2
end

def retrieve_operator(language)
  operator = ''
  prompt(messages('operator_prompt', language))
  loop do
    operator = Kernel.gets().chomp()

    break if %w(1 2 3 4).include?(operator)
    prompt(messages('operator_choice', language))
  end
  operator
end

def operation_to_message(op, language)
  op_ing = case op
           when '1'
             messages('adding', language)
           when '2'
             messages('subtracting', language)
           when '3'
             messages('multiplying', language)
           when '4'
             messages('dividing', language)
           end
  op_ing
end

def invalid_calculation?(num2, operation)
  num2 == '0' && operation == '4'
end

def display_invalid_calculation(language)
  prompt(messages('zero_division_error', language))
end

def display_calculating_message(operation, language)
  prompt(operation_to_message(operation, language))
end

def retrieve_result(operation, num1, num2)
  case operation
  when '1' then num1.to_i() + num2.to_i()
  when '2' then num1.to_i() - num2.to_i()
  when '3' then num1.to_i() * num2.to_i()
  else num1.to_f() / num2.to_f()
  end
end

def display_calculation_result(language, final_result)
  prompt(format(messages('result', language), result: final_result.round(2)))
end

def another_calculation?(language)
  answer = ''
  loop do
    prompt(messages('again', language))
    answer = Kernel.gets().chomp().downcase()

    break if valid_answer(answer)
    prompt(messages('invalid_response', language))
  end
  answer
end

def valid_answer(ans)
  ['y', 's', 'o', 'n'].include?(ans)
end

def display_goodbye(language, name)
  prompt(format(messages('goodbye', language), name: name))
  sleep 3
  clean_screen
end

# Program Start

display_welcome
lang = lang_choice(get_lang)

name_prompt(lang)
name = get_name(lang)

display_greeting(name, lang)

loop do
  # number1 = ''
  number2 = ''
  operator = ''

  number1 = retrieve_first_number(lang)

  loop do
    number2 = retrieve_second_number(lang)
    operator = retrieve_operator(lang)

    break unless invalid_calculation?(number2, operator)
    display_invalid_calculation(lang)
  end

  display_calculating_message(operator, lang)
  result = retrieve_result(operator, number1, number2)

  display_calculation_result(lang, result)

  answer = another_calculation?(lang)
  break if answer == 'n'
  clean_screen
end

display_goodbye(lang, name)
