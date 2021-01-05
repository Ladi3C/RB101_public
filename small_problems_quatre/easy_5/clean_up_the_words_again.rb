# def  cleanup(string)
#   string.gsub(/[^a-z]/i, ' ').squeeze
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

ALPHA = ('a'..'z').to_a


def cleanup(string)
  clean_string = ''

  string.chars.each do |char|
    if ALPHA.include?(char)
      clean_string << char
    else
      clean_string << ' ' unless clean_string.end_with?(' ')
    end
  end
   clean_string
end

p cleanup("---what's my +*& line?") == ' what s my line '