=begin
Problem:
        Write a method 
        that returns a list of all substrings 
        of a string 
        that start at the beginning of the original string. 

        The return value should be arranged in order from 
        shortest to longest substring.
Examples:
        leading_substrings('abc') == ['a', 'ab', 'abc']
        leading_substrings('a') == ['a']
        leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
Data Structure:
        Input : String
        Output: Array
        Rules:
            - should be able to hand a single string
Algorithm:
        index

=end



# def leading_substrings(strings)
#   result = []
#   counter = 0
#   loop do
#     break if counter == strings.size
#     result << strings[0..counter]
    
#     counter += 1
#   end
#   result
# end

# def leading_substrings(strings)
#   result = []
#   0.upto(strings.size - 1) do |index|
#     result << strings[0..index]
#   end 
# result
# end 

def leading_substrings(strings)
  result = []
  counter = 0
  loop do
    break if counter == strings.size
    result << strings[0..counter]
    counter += 1
  end
  result
end
p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']