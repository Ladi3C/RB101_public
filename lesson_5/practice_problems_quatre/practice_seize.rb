=begin

Problem:
          Write a method that returns one UUID when called with no parameters.

Example:  32 CHARACTERS
0 1 2 3 4 5 6 7 8 9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
1 2 3 4 5 6 7 8 - 10 11 12 13 -  15 16 17 18 -  20 21 22 23 -  25 26 27 28 29 30 31 32 33 34 35 36
          8-4-4-4-12

          numbers are 0 - 9
          letters are a - f

Data Structure: Output: a string

Algorithm:

Define a method with no parameters
put numbers to string and letters in an array
randomize them
create a code that will push 8 randomized characters in a empty string
then append a dash
then 4 characters
append a dash
then 4 characters 
append a dash
then 4 characters
append a dash
then 12 characters
done
=end

def uuid
  num_strings = (0..9).to_a.map { |num| num.to_s} + ('a'..'f').to_a
  final_uuid = ""
  char_counter = (0..7).to_a + (9..12).to_a + (14..17).to_a + (19..22).to_a + (24..35).to_a
  counter = 0

  loop do
    if char_counter.include?(counter)
      final_uuid << num_strings.sample
    else 
      final_uuid << "-"
    end
    counter += 1
    break if counter == 36
  end
  final_uuid
end

p uuid 