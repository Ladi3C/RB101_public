=begin

Problem:   Write a method that takes one argument, a string containing one or more words, 
           and returns the given string with words that contain five or more characters reversed. 
           Each string will consist of only letters and spaces. 
           Spaces should be included only when more than one word is present.

Input:     string 
Output:    string 

Rules:     write a method
           takes one argument
           string containing one or more words
           RETURNS reversed IFFF the word has 5 or more characters 
           a string letters and spaces
           spaces should be inludec when only more than one word is present

Examples:  puts reverse_words('Professional')          # => lanoisseforP
           puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
           puts reverse_words('Launch School')         # => hcnuaL loohcS
Data/Algorithm: 
                  define a method
                  takes argument thats a string
                  separate the words
                  count 
                  loop or each
                  ifthe word has 5 or more characters .reverse
                  else just puts the word
                    join the words \

=end

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')