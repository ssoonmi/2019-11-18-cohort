# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(*arrays) # array of arrays
    # arrays = [["a", "b"], [1, 2, 3]]
    # arrays.flatten
    arrays.inject { |acc, array| acc + array } # ["a", "b", [1, 2, 3]]
    # acc = ["a", "b", 1, 2, 3]
end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
