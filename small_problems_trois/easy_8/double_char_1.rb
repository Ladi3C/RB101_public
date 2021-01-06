# def repeater(string)
#   doubled_string = []
#   0.upto(string.size - 1) do |num|
#     doubled_string << string[num] << string[num]
#    end
#   doubled_string.join('')
# end

# def repeater(string)
#   doubled = ''
#   counter = 0
#   loop do
#     break if counter == string.size
#     doubled << string[counter] * 2
#     counter += 1
#   end
#   doubled
# end

def repeater(string)
  doubled = ''
  string.each_char do |char|
    doubled << char * 2
  end
  doubled
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
