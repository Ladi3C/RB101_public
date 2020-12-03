=begin
Problem:
        Write a method 
        that takes an array of strings, 
        and returns an array of the same string values, 
        except with the vowels (a, e, i, o, u) removed.

Example:
        remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
        remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
        remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Data Structure:
        Input : array
        Output: array

Algorithm:
        - create a vowel constant
        - create an empty array
        - access each array in the array given
        - iterate through and push elements that are not vowels to the empty array
Code:
=end

VOWELS = 'aeiouAEIOU'
NON_VOWELS = 'bcdfghjklmnpqrstvwxyz'

def remove_vowels(strings)
  strings.map { |string| string.delete(VOWELS)}
end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']