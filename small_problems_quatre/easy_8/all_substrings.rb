=begin
Problem: 
=end
def leading_substrings(string)
  result = []
  0.upto(string.length - 1) do |num|
    result << string[0..num]
  end
  result
end

def substrings(strings)
  result= []
  (0..strings.size).each do |start_index|
    this_substring = strings[start_index..-1]
    result.concat(leading_substrings(this_substring))
  end
  result
end

p substrings('abcde')