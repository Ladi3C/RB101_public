=begin
Problem:
        Write a method 
        that returns 
        list of all substrings of a string. 

        The returned list should be ordered 
        y where in the string the substring begins. 

        This means that all substrings that start at position 0 
        should come first, 
        hen all substrings that start at position 1, 
        and so on. 

        Since multiple substrings will occur at each position, 
        the substrings at a given position should be returned in order 
        from shortest to longest.

        You may (and should) use the leading_substrings method you wrote in the previous exercise:
Example:
        substrings('abcde') == [
        'a', 'ab', 'abc', 'abcd', 'abcde',
        'b', 'bc', 'bcd', 'bcde',
        'c', 'cd', 'cde',
        'd', 'de',
        'e'
      ]
Data Structure:
        Input : String
        Output: Array
Algorithm:
        - control the previous answer
        - create substrings method with one string parameter
        - 
Code:
=end

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

def substrings(strings)
  result = []
  (0...strings.size).each do |starting_index|
    current_substring = strings[starting_index..-1]
    result << leading_substrings(current_substring)
  end
  result.flatten
end


p substrings('abcde') 