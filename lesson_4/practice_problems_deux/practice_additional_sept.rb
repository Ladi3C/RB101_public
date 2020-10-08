=begin

Problem:   Create a hash that expresses the frequency with which each letter occurs in this string:
Example:   statement = "The Flintstones Rock"
           
           { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

Input: variable with string value
Output: hash

Rules:    - create a hash
          - make each letter a key
          - value holding frequency

Algorithm:



=end

statement = "The Flintstones Rock"
statement_hash = {}
counter = 0
new_statement = statement.delete(" ").split("").sort


loop do
  break if counter == new_statement.size

  current_key = new_statement[counter]
  statement_hash[current_key] = statement.count(current_key)

  counter += 1
end 
p statement_hash
 
