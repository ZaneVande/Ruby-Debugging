# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.


def prime?(num)
    return false if num < 2

    (2...num).none? { |i| num % i == 0 }

end

def largest_prime_factor(number)

    number.downto(2) do |factor|
        if number % factor == 0 && prime?(factor)
            return factor
        end
    end
end

def unique_chars?(string)
    
    string.downcase
    ("a".."z").all? { |letter| string.count(letter) <=1 }
   
end

def dupe_indices(arr)
    positions = Hash.new { |h, k| h[k] = [] }
    arr.each_with_index do |ele, i|
        positions[ele] << i 
    end
    positions.select { |k, v| v.length > 1 }
end

def ele_count(arr)
    count = Hash.new(0)

    arr.each { |ele| count[ele] += 1 }

    count
end

def ana_array(arr_1, arr_2)
    count_1 = ele_count(arr_1)
    count_2 = ele_count(arr_2)
    count_1 == count_2
end