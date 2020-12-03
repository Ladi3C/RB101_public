print "Please write word or multiple words:"
words = gets.chomp
word_length = words.delete(' ').size
puts "There are #{word_length} characters in \"#{words}\"."

