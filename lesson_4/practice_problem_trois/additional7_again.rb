statement = "The Flintstones Rock"
statement_hsh = {}
stmnt_arr = statement.delete(' ').split('').sort
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  num = statement.scan(letter).count
  statement_hsh[letter] = num if num > 0
end 

p statement_hsh

# p (stmnt_arr.each_with_object({}) do |char, hsh|
#   hsh[char] = statement.count(char)
#   end) 

# counter = 0

# loop do
#   break if counter == stmnt_arr.size

#   current_key = stmnt_arr[counter]
#   statement_hsh[current_key] = stmnt_arr.count(current_key)

#   counter += 1
# end 

# p statement_hsh