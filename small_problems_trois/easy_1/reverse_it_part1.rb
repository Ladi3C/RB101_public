# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

def reverse_sentence(string)
  arr = string.split
  reverse_arr = []
    arr.each do |word|
      reverse_arr.unshift(word)
    end
  reverse_arr.join(' ')
end
p reverse_sentence('') #== ''
p reverse_sentence('Hello World') #== 'World Hello'
p reverse_sentence('Reverse these words') #== 'words these Reverse'

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'