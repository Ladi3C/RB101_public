numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)
p numbers
# line 3 will delete at the index 1. => [1, 3, 4, 5]
# line 4 will delete index 0 => [2, 3, 4, 5]