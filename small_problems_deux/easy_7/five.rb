=begin
Problem:
      Write a method 
      that takes a String as an argument, 
      and returns a new String 
      that contains the original value 
      using a staggered capitalization scheme 
      in which every other character is capitalized, 
      and the remaining characters are lowercase. 

      Characters that are not letters should not be changed, 
      but count as characters when switching between upper and lowercase.
Example:
      staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
      staggered_case('ALL_CAPS') == 'AlL_CaPs'
      staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
Data Structure:
        Input : String
        Output: String
Algorithm:
      - downcase the string
      - convert the string into an array (chars?)
      - iterate throgh the array 
      - lets work with indexes!
      - even indexes are upcased
      - odd indexes are downcased
      - lets possibly use map so we can return a *new* array :)
Code:
=end

def staggered_case(strings)
  result = strings.chars.each_with_index do |char, index| 
    char.upcase! if index.even?
    char.downcase! if index.odd?
  end 
  result.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'