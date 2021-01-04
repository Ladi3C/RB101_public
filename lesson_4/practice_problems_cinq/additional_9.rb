def titleize(strings)
  strings.split.map { |string| string.capitalize!}.join(' ')
end


words = "the flintstones rock"
p titleize(words)