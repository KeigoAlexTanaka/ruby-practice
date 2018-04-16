# return the number of times some elem appears in an arr
def arr_count(arr, elem)
  count = 0
  arr.each do |i|
    if i == elem
      count += 1
    end
  end
  count
end

# return the number of times some value appears in a hash
def hash_count(hash, value)
  count = 0
  hash.each do |key, val|
    if val == value
      count +=1
    end
  end
  count
end

# return: :fizz if n is disible by 3,
#         :buzz if n is disible by 5,
#         :fizzbuzz if n is disible by 3 and 5,
#         n otherwise
def fizzbuzz(n)
  divisible_by_five = n % 5 == 0
  divisible_by_three = n % 3 == 0
  if divisible_by_five && divisible_by_three
    return :fizzbuzz
  end
  if divisible_by_three
    return :fizz
  end
  if divisible_by_five
    return :buzz
  end
  return n
end

# Return an array of the first n values of fizzbuzz from 0 to n (exclusive).
def fizzbuzz_arr(n)
  arr = []
  n.times do |number|
    arr.push(fizzbuzz(number))
  end
  arr
end

# Find two numbers in an array that sum to the provided number num.
def two_sum(arr, num)
  arr.each_with_index do |val, index|
    arr.each_with_index do |val2, index2|
      next if index == index2
      if val + val2 == num
        return [val, val2]
      end
    end
  end
  return nil
end
