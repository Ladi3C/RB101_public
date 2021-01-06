ALPHA = ('a'..'z').to_a

def cleanup(string)
  squeezed = string.squeeze
  squeezed.chars.map do |char| 
    if !(ALPHA.include?(char))
      char = ' '
    else
      char 
    end
  end.join.squeeze
end

p cleanup("---what's my +*& line?") #== ' what s my line '


