def move(n, from_array, to_array)
  counter = 1
  loop do
    to_array << from_array.shift
    counter += 1
    break if counter > n
  end
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

p move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']