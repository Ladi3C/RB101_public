=begin

NOT TRANSFORMATION 

1) TRANSFORMATION 
2) SELECTION
3) ITERATION = it didnt destructively change the downcase with a bang suffix, returning
                a new array with the same elements of the original array 
4) TRANSFORMATION
=end

def star_method(stars)
  for star in stars
    star.downcase
  end
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
p stars_2 = star_method(stars_1)