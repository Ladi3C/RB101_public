=begin
Problem: 
        Write a method 
        that takes an Array of Integers 
        between 0 and 19, 
        and returns an Array 
        of those Integers 
        sorted 
        based on the English words for each number:


Example: 

        zero, one, two, three, four, five, six, seven, eight, nine, ten, 
        eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
        
        alphabetic_number_sort((0..19).to_a) == [
        8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
        6, 16, 10, 13, 3, 12, 2, 0
      ]
Data Structure:
        Input:  Array
        Output: Array
Algorithm:
      -  create a hash where each number is the key and the number word is the value
      -  first convert the array into a string array using the number_hsh constant
      -  then sort the array alphabetically
      -  then create a new array and push each key of the sorted array using the value
=end

NUMBER_HSH = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

#number_hsh.key('zero')

def alphabetic_number_sort(arr)
  words_arr = arr.map { |num| NUMBER_HSH[num] }
  words_sorted = words_arr.sort { |a, b| a <=> b }
  sorted_arr = []
  words_sorted.each { |word| sorted_arr << NUMBER_HSH.key(word)}
  sorted_arr
end

p alphabetic_number_sort((0..19).to_a) == [
        8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
        6, 16, 10, 13, 3, 12, 2, 0
      ]