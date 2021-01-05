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
Algorithm:
        -downcase string and convert to array and map or loop
        - work with indexes
        - if index is even the capitalze unless character is not part of alpabet
=end

def staggered_case(text)
  working_text = text.downcase.chars
  counter = 0
  loop do
    working_text[counter].upcase! if counter.even? unless working_text[counter] =~ /[^a-zA-z]/
    counter += 1
    break if counter == working_text.size 
  end
  working_text.join
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'