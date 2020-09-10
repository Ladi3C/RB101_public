LETTERS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
           "L", "M", "N", "O", "P", "Q", "R", "S", 
          "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", 
          "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", 
          "t", "u", "v", "w", "x", "y", "z"]

statement = "The Flintstones Rock"
hash_frequency = Hash.new

LETTERS.each do |letter|
  letter_frequency = statement.scan(letter).count
  hash_frequency[letter] = letter_frequency if letter_frequency > 0
end 

p hash_frequency