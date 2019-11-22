def prime?(num)
    return false if num < 2
    (2...num).none? { |factor| num % factor == 0 }
end

def largest_prime_factor(num)
    # num.downto(2) { |factor| return factor if num % factor == 0 && prime?(factor) }
    factor = num
    while factor > 1
        return factor if num % factor == 0 && prime?(factor)
        factor -= 1
    end
end

def unique_chars?(string)
    already_seen = []

    string.each_char do |char|
        return false if already_seen.include?(char)
        already_seen << char
    end

    true
end

Array.new(3) { [] } # => [[], [], []]

def dupe_indices(array) # ['a'] => {  }
    indices = Hash.new { |h, k| h[k] = [] } # hash default, indices = {'a': [0]}
    # Hash defaults 
    array.each_with_index { |ele, i| indices[ele] << i } # ele = 'a', i = 0
    indices.select { |key, value| value.length > 1 } # return {}
    # only selecting the keys where length of the values are greater than 1
end

def ele_count(arr)
    count = Hash.new(0) # counter hash

    arr.each { |ele| count[ele] += 1 }

    count
end

def ana_array(arr_1, arr_2)
    count_1 = ele_count(arr_1)
    count_2 = ele_count(arr_2)
    count_1 == count_2
end