What would you expect the code below to print out?

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

`Line 7` should print out `[1, 2, 2, 3]` because the `#uniq` method called on the variable `numbers` that references the array object `[1, 2, 2, 3]`  is non-mutating. It does not permanenly modify the array object. `Line 2` returns `[1, 2, 3]` and when  othe array object referenced by `numbers` is passed as an argument to the `puts` method, it returns the array `[1, 2, 2, 3]`. 



