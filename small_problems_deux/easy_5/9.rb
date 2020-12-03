
=begin
Problem:
        Write a method 
        that takes a string argument 
        and returns a new string 
        that contains the value of the original string 
        with all consecutive duplicate characters collapsed 
        into a single character. 

        You may not use String#squeeze or String#squeeze!.
Example:
        crunch('ddaaiillyy ddoouubbllee') == 'daily double'
        crunch('4444abcabccba') == '4abcabcba'
        crunch('ggggggggggggggg') == 'g'
        crunch('a') == 'a'
        crunch('') == '' 

Data Structure:
        Input:  STRING
        OUtput: STRING
Algorithm:
        - create a method that takes a string as a parameter
        - convert the string to an array
        - if the index 0 is the same as index 1 then delete index 0 
          keep comparing
        - use a counter to control the array
Code:
=end

# def crunch(string)
#   return string if string.size < 2 #this was sprinkles!
#   string_arr = string.split('')
#   #return '' if string_arr.empty?
#   arr = []
#   counter = 0
#   loop do
#     break if counter == string_arr.size - 1
#     arr << string[counter] if string_arr[counter] != string_arr[counter + 1]
#     counter += 1
#   end
#   arr << string_arr.last if string_arr.last != arr.last
#  arr.join('')
# end

def crunch(string)
  index = 0
  crunch_string = ''
  while index <= string.length - 1
    crunch_string << string[index] unless string[index] == string[index + 1]
    index += 1
  end 
  crunch_string
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''