hsh = {
  
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']

}

vowels = 'aeiou'

lola = hsh.each do |_, value|
        value.each do |str|
          str.chars.each do |char|
            puts char if vowels.include?(char)
          end 
        end
       end 

p lola
