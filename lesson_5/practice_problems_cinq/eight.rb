VOWELS = 'aeiou'
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.values.flatten.each do |word|
  word.chars.each do |letter|
  puts letter if VOWELS.include?(letter)
  end 
end
