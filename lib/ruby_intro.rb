# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  for i in 0...arr.length
  sum+= arr[i]
  end
return sum
end

def max_2_sum arr
  # YOUR CODE HERE
   return sum(arr.max(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    hm = {}
    for i in 0...arr.length
    return true unless hm[n-arr[i]].nil? 
    hm[arr[i]] = i
    end
    return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE

  return /^[^aeiou\d\W]/i =~ s ? true : false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
 return true if s == "0"
 return 	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE

def initialize (isbn, price)
  raise ArgumentError.new("Input number is not a valid number") if price <=0
  raise ArgumentError.new("Input number is not a valid number") if isbn.length==0
 @isbn = isbn
 @price =price
end

def isbn
 return @isbn  
end

def price 
 return @price
end

def price=(pr)
 @price =pr
end

def isbn=(is)
 @isbn =is
end

def price_as_string()
  price = '%.2f' %@price
  return "$"+price.to_s
end

end
