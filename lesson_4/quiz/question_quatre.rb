=begin

Problem:   

        Implement a method that takes two arguments:

        a sentence string consisting of one or more words
        
        a value which represents a particular case type from either snake case, 
        camel case or upper snake case

        The method should return the given string transformed into the appropriate case.

Example: sentence = 'The sky was blue'
         change_case(sentence, :snake) # => 'the_sky_was_blue'


Algorithm: 

- Define method **change_case** 

- two parameters  (sentence, new_case)
      1) sentence string  ===> one or more wors
      2) value ==> |snake case|,     |camel case|, or     |upper snake case|
                   | downcase |      |Capitilize|         |     UPCASE     |

- Return: a string ==> TRANSFORMATION => appropriate case

=end


def snake(str)
  words = str.split  # words = ['The', 'sky', 'is', 'blue']
  current_word = 0

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end



sentence = 'The sky was blue'
p snake(sentence) # => 'the_sky_was_blue'




# def change_case(sentence, new_case)
#   case new_case
#   when :snake
#     snake(sentence)
#   when :camel
#     camel(sentence)
#   when :upper_snake
#     upper_snake(sentence)
#   else
#     puts 'Invalid case type'
#   end
# end



# sentence = 'The sky was blue'
# change_case(sentence, :snake) # => 'the_sky_was_blue'