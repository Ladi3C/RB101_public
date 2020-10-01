=begin

Problem: Using the each method, write some code to output all of the vowels from the strings.

This is a hash called hsh
4 keys 
Each key is an array

=end


hsh = {

  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']


}

vowels = "aeiou"

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end 
  end
end