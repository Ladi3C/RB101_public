=begin
Problem:
        Write a method 
        that returns a list 
        of all substrings of a string 
        that start at the beginning of the original string. 
        The return value should be arranged in order from 
        shortest to longest substring.
Data Structure:
        Input : string
        Output: array
Algorithm:
        - 
=end

def leading_substrings(string)
  string_arr = string.chars
  counter = 1
  result_arr = [] 
  loop do
    result_arr << string_arr[0, counter]

    counter += 1
    break if counter > string_arr.size
  end
  result_arr.map(&:join)
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']