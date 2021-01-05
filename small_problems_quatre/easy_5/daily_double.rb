=begin
Problem:
        Write a method 
        that takes a string argument 
        and returns a new string 
        that contains the value of the original string 
        with all consecutive duplicate characters collapsed into a single character. 
        You may not use String#squeeze or String#squeeze!.
Example:
        crunch('ddaaiillyy ddoouubbllee') == 'daily double'
        crunch('4444abcabccba') == '4abcabcba'
        crunch('ggggggggggggggg') == 'g'
        crunch('a') == 'a'
        crunch('') == ''
Data Structure: 
        Input : string
        Output: string
Algorithm:
        create method `crunch` with `string` as its parameter
        create an empty string variable `crunchies`
        create variable `string_arr` with `string`converted to an array
        iterate through `string_arr` and push each element into `crunchies` unless crunchies ends with
           the same element that is iterated through.
=end

# def crunch(string)
#   crunchies = ''
#   string.each_char do |char|
#     crunchies << char unless crunchies.end_with?(char)
#   end
#   crunchies
# end

def crunch(string)
  index = 0
  crunchies = ''
  while index <= string.length - 1
    crunchies << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  crunchies
end


p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''






