greetings = { a: 'hi' }
informal_greeting = greetings[:a] #'hi'
informal_greeting << ' there' #'hi there'

puts informal_greeting  #  => "hi there"
puts greetings # "hi there"