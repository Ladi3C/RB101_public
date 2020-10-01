=begin

Problem:  Write a method that takes one argument, a string containing one or more words,
          and returns the given string with words that contain five or more characters reversed. 
          Each string will consist of only letters and spaces. Spaces should be included only 
          when more than one word is present.

Example: 
          puts reverse_words('Professional')          # => lanoisseforP
          puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
          puts reverse_words('Launch School')         # => hcnuaL loohcS

Rules:    write a method
          Takes one argument, string with one or more words
          RETURNS the strings reversed !!!!IF!!! they contain five or more characters
          spaces if more tan one word


Algorithm:
- Def method reverse_words
- initialize parameter string
- 


=end

def reverse_words(string)
  string_arr = string.split
  counter = 0

  loop do 
    break if counter == string_arr.size

    if string_arr[counter].size >= 5
      string_arr[counter].reverse!
    end

    counter += 1
  end 

  string_arr.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS