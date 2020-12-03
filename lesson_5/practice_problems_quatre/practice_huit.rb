=begin

Problem : 
          Using the each method, write some code to output all of the vowels from the strings.

=end

hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}

VOWELS = "aeiou"

# hsh.each do |_, v|
#   v.each do |word|
#     word.chars.each do |char|
#       puts char if VOWELS.include?(char)
#     end
#   end 
# end

hsh.each_value do |value|
  value.each do |word|
    word.chars.each do |char|
      puts char if VOWELS.include?(char)
    end 
  end 
end 