=begin

Problem: 

        Using the each method, write some code to output all of the vowels from the strings.

- notice all words in the arrays for each hash are downcased
=end

hsh = {

first: ['the', 'quick'], 
second: ['brown', 'fox'], 
third: ['jumped'], 
fourth: ['over', 'the', 'lazy', 'dog']

}

vowels = "aeiou"


hsh.each do |_, value|
  value.each do |word|
    word.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end 




