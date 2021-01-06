# def calculate_bonus(num, boolean)
#   if boolean
#     num / 2
#   else
#     0
#   end 
# end

def calculate_bonus(num, boolean)
  boolean ? (num/2) : 0
end

p calculate_bonus(2800, true) #== 1400
p calculate_bonus(1000, false)# == 0
p calculate_bonus(50000, true)# == 25000