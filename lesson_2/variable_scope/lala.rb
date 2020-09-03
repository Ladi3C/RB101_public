def unique_string_characters(string1, string2)
  final_string = ''

  string1.split("").each do |char|
    final_string << (char) unless string2.include?(char)
    end

    string2.split("").each do |char|
    final_string << (char) unless string2.include?(char)
    end
    final_string
  end





p unique_string_characters('xyab', "xzca")