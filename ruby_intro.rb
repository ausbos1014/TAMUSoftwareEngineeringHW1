# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0, :+)
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  else
    return arr.max(2).reduce(:+)
  end 
end

def sum_to_n?(arr, n)
  if arr.empty?
    return false
  else
    return arr.permutation(2).any? { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /\A(?=[^aeiou])(?=\w)/i === s
end

def binary_multiple_of_4? s
  if s=='0'
    return true
  else
    /^\d+00$/===s
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price<=0 || isbn.empty?
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end 
  
  attr_accessor :price
  attr_accessor :isbn
  
  def price_as_string()
    return format("$%.2f",@price)
  end
  
end
