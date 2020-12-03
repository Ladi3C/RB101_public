ALPHA = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHA.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end 
  end 

  p clean_chars
end

#p cleanup("---what's my +*& line?") == ' what s my line '