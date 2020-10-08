def is_an_ip_number?(string)
  ip_num = (0..255).to_a
  ip_num.include?(string.to_i)
end 


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("4.5.5")
p dot_separated_ip_address?("1.2.3.4.5")

