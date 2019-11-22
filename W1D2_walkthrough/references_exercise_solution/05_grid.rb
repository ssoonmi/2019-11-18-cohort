# Write a method, grid(n, m), that accepts two numbers as args.
# The method should return a 2D array with n rows and m columns (this means that there are n subarrays, each of length m).
require 'byebug'

def grid(n, m) # [el, el] where el is [nil, nil, nil]
    Array.new n do 
      Array.new(m) { 'hello' }
    end # array default
end

result_1 = grid(2, 3)
p result_1              # => [[nil, nil, nil], [nil, nil, nil]]
p result_1[0][0].object_id
p result_1[0][1].object_id
result_1[0][0][0] = 'a'
p result_1[0][0].object_id
p result_1
# p result_1              # => [["X", nil, nil], [nil, nil, nil]]


# result_2 = grid(4, 2)
# p result_2              # => [[nil, nil], [nil, nil], [nil, nil], [nil, nil]]
# result_2[0][0] = "Q"
# p result_2              # => [["Q", nil], [nil, nil], [nil, nil], [nil, nil]]
