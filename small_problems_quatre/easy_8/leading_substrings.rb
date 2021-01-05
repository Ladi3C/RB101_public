=begin
Problem:
        Write a method 
        that returns a list 
        of all substrings of a string 
        that start at the beginning of the original string. 
        The return value should be arranged in order 
        from shortest to longest substring.
Example:
        leading_substrings('abc') == ['a', 'ab', 'abc']
        leading_substrings('a') == ['a']
        leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
Data Structure:
        Input : Array
        Output: Array
Algorithm:
        - 
=end

# def leading_substrings(string)
#   result = []
#   counter = 0
#   loop do
#     current_str =  (string[0..counter])
#     result << current_str
#     counter += 1
#     break if counter == string.size
#   end
#   result
# end

# def leading_substrings(string)
#   result = []
#   string.chars.each_with_index do |_, index|
#     result << string[0..index]
#   end
#   result
# end

# def leading_substrings(string)
#   result = []
#   0.upto(string.length - 1) do |num|
#     result << string[0..num]
#   end
#   result
# end

def leading_substrings(string)
  result = []
  string.length.times { |num| result << string[0..num]}
  result
end



p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

a = ['a', 'ab', 'abc']
