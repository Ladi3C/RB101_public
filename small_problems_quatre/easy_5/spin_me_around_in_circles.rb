def spin_me(string)
  string.split.each do |word|
    word.reverse!
  end.join(' ')
end

a = 'hello world'
p a.object_id
p spin_me(a) # "olleh dlrow"
p a.object_id