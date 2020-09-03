# Peer scopes do not conflict

2.times do 
  a = 'hi'
  puts a
end 

loop do 
  puts a
  break
end 

puts a 