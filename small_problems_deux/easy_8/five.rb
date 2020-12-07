=begin
Problem:
        Write a method 
        that returns a list 
        of all substrings of a string 
        that are palindromic. 

        That is, 
        each substring 
        must consist 
        of the same sequence of characters 
        forwards as it does backwards.

        The return value 
        should be arranged 
        in the same sequence 
        as the substrings appear 
        in the string. 

        Duplicate palindromes 
        should be included 
        multiple times.

        You may (and should) 
        use the substrings method 
        you wrote in the previous exercise.

        For the purposes of this exercise, 
        you should consider all characters and 
        ay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
        In addition, assume that single characters are not palindromes.

Example:
        palindromes('abcd') == []
        palindromes('madam') == ['madam', 'ada']
        palindromes('hello-madam-did-madam-goodbye') == [
          'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
          'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
          '-madam-', 'madam', 'ada', 'oo'
        ]
        palindromes('knitting cassettes') == [
          'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
        ]
Data Structure:
        Input : string
        Output: array
Algorithm:
        - first check to see if the string is a palindrome
        - write a method definition that checks
Code:
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

def substrings(strings)
  nested_arr = []
  
  (0...strings.size).each do |start_index|
    this_substring = strings[start_index..-1]
    nested_arr.concat(leading_substrings(this_substring))
  end 

  nested_arr
end


def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  palindrome_arr = []
  all_substrings.each do |substring|
    palindrome_arr << substring if palindrome?(substring)
    end  
    palindrome_arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]