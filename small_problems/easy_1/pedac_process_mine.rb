=begin
Consider the word "abode".
The letter `a` is in position 1 and `b` is in position 2.
In the alphabet, `a` and `b` are also in positions 1 and 2.

The letters `d` and `e` in "abode" occupy the positions they would occupy in the alphabet, which are positions 4 and 5. 

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

solve(["abode", "ABc", "xyzD"]) == [4, 3, 1]

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

solve(["abode", "ABc", "xyzD"]) == [4,3,1]
solve(["abide", "ABc", "xyz"]) == [4,3,0]
solve(["encode", "abc", "xyzD", "ABmD"]) == [1, 3, 1, 3]
/

line 16: c = 1, abc = 3, xyzd = 1, abmd = 3
line 15: 

___
Carolina
1. Define a method with one parameter (array)
2. Initialize a variable that has the value of an alphabet array for comparison 
        Alphabet [a,b,c,d ... ] and uppercase
3. Initialize a variable that has the value of an empty array to push integers to. 
        result = []
4. Set a counter
        counter = 0
5. Create a loop
        loop 
6. Conditional statement 
        if the index of each letter in the word matches position in alphabet,
        count how many letters that is and push the total count into the result array
7. Set a break statement to stop once the counter has reached the size of the array. 



____

Case insensitive : downcase or upcase
1 2 3 4 5  
a b c d e
a b o d e
           = 4 match position
           


         
           
fake pedac

input: An array of string objects, each element represents a word
output: An array of integers

edge cases: everythign seems to align with the problem description, no gotchas, no spaces within the word



pre-algo:


algo:

downcase

=end

ALPHA = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]


def solve(array)
  counter = 0
  result = []
  loop do
    word = array[counter].downcase
    second_counter = 0
    sum = 0
      loop do
          letter = word[second_counter]
          sum += 1 if letter == ALPHA[second_counter]
          second_counter += 1
        break if second_counter == word.size
        end
    result << sum
    counter += 1
    break if counter == array.size
  end
  result
end

p solve(["abode", "ABc", "xyzD"])# == [4,3,1]
p solve(["abide", "ABc", "xyz"]) #== [4,3,0]
p solve(["encode", "abc", "xyzD", "ABmD"]) #== [1, 3, 1, 3]
puts ''
p solve(["abode", "ABc", "xyzD"]) == [4,3,1]
p solve(["abide", "ABc", "xyz"]) == [4,3,0]
p solve(["encode", "abc", "xyzD", "ABmD"]) == [1, 3, 1, 3]