=begin

=end
def penultimate(sentence)
  arr = sentence.split
  arr[-2]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'