# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  arr.max(2).sum
end

def sum_to_n?(arr, n)
  return false if arr.length < 2

  seen = {}
  arr.each do |x|
    return true if seen[n - x]
    seen[x] = true
  end

  false
end



# Part 2

def hello(name)
  "Hello, " + name
end


def starts_with_consonant?(s)
  if s.length == 0
    return false
  end

  first = s[0]

  if !(first =~ /[A-Za-z]/)
    return false
  end

  if first =~ /[AEIOUaeiou]/
    return false
  end

  return true
end


def binary_multiple_of_4?(s)
  if !(s =~ /\A[01]+\z/)
    return false
  end

  num = s.to_i(2)

  if num % 4 == 0
    return true
  else
    return false
  end
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError.new("ISBN cannot be empty")
    end

    if price <= 0
      raise ArgumentError.new("Price must be greater than zero")
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
  "$" + ("%.2f" % @price)
  end
end
