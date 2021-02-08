# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  return false if !s[0].match(/[a-zA-Z]/)
  !s.start_with?('a','e','i','o','u','A','E','I','O','U')
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if (s)=='0'
  /^[01]*(00)$/.match(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :price, :isbn 
  def initialize isbn, price
    raise ArgumentError if price <= 0 || isbn.empty?
    @price = price
    @isbn = isbn
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
