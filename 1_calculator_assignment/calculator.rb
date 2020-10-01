require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def clean_screen
  system('clear') || system('cls')
end

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def get_lang
  lang = ''
  loop do
    lang = gets().chomp()

    if %w(1 2 3 4).include?(lang)
      break
    else
      prompt(messages('valid_language'))
    end
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

def get_name
  name = ''
  loop do
    name = Kernel.gets().chomp().strip().capitalize()

    break unless name.empty?() || name =~ /\d/
    prompt(messages('valid_name', lang))
  end
  name
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
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

def valid_answer(ans)
  ['y', 's', 'o', 'n'].include?(ans)
end

# Program Start

clean_screen

prompt(messages('welcome'))

lang = lang_choice(get_lang)

prompt(messages('name', lang))

name = get_name

prompt(format(messages('greeting', lang), name: name))

loop do
  number1 = ''
  number2 = ''
  operator = ''
  loop do
    prompt(messages('first_num', lang))
    number1 = Kernel.gets().chomp().strip()

    break if valid_number?(number1)
    prompt(messages('valid_number', lang))
  end

  loop do
    loop do
      prompt(messages('second_num', lang))
      number2 = Kernel.gets().chomp().strip()

      break if valid_number?(number2)
      prompt(messages('valid_number', lang))
    end

    prompt(messages('operator_prompt', lang))

    loop do
      operator = Kernel.gets().chomp()

      break if %w(1 2 3 4).include?(operator)
      prompt(messages('operator_choice', lang))
    end

    break unless number2 == '0' && operator == '4'
    prompt(messages('zero_division_error', lang))
  end
  prompt(operation_to_message(operator, lang))

  result = case operator
           when '1' then number1.to_i() + number2.to_i()
           when '2' then number1.to_i() - number2.to_i()
           when '3' then number1.to_i() * number2.to_i()
           else          number1.to_f() / number2.to_f()
           end

  prompt(format(messages('result', lang), result: result.round(2)))

  answer = ''
  loop do
    prompt(messages('again', lang))
    answer = Kernel.gets().chomp().downcase()

    break if valid_answer(answer)
    prompt(messages('invalid_response', lang))
  end

  break if answer == 'n'

  clean_screen
end

prompt(messages('goodbye', lang))
sleep 3
clean_screen
