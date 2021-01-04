=begin
Problem: 
        Create a hash that expresses the frequency with which each letter occurs in this string:
Example:
        { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
Edgecases:
        - they are in order starting with upcased letters
Data Structure:
        Input : string
        Output: hash
Algorithm:
        - create a `statement_arr` variable that has the return value of 
            - delete the empty spaces, convert to array and sort it
        - create a `keys` variable that is the return value of #uniq called on `statement_arr`
        - create variable `statement_hsh` assigned to an empty hash
        - call each on `keys` and assign each letter to be a  `statement_hsh` key while the values as counting
        letter in the `statement_arr` array. 
=end

statement = "The Flintstones Rock"
statement_arr = statement.delete(' ').chars.sort
keys = statement_arr.uniq
statement_hsh = {}

keys.each do |letter|
  statement_hsh[letter] = statement_arr.count(letter)
end

p statement_hsh