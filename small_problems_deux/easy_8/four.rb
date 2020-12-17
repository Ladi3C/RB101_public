=begin
Problem: 
        Write a method 
        that returns a list 
        of all substrings 
        of a string. 

        The returned list should be 
        ordered by where in the string the substring begins. 

        This means that all substrings that start at position 0 should come first, 
        then all substrings that start at position 1, and so on. 
        Since multiple substrings will occur at each position, 
        the substrings at a given position should be returned in order from shortest to longest.

        You may (and should) use the leading_substrings method you wrote in the previous exercise:

Algorithm:
def substrings(strings)
  counter = 0
  nested_arr = []
  loop do
    nested_arr << leading_substrings(strings)
    
    counter += 1
    strings = strings[counter..-1]

    break if counter == strings.size
  end
  nested_arr
end
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
 leading_substrings('abcde')

def substrings(strings)
  nested_arr = []
  
  (0...strings.size).each do |start_index|
    this_substring = strings[start_index..-1]
    nested_arr.concat(leading_substrings(this_substring))
  end 

  nested_arr
end

p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]