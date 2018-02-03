# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
          s1 = 0
        	arr.each {|a| s1+= a}
          return s1
end
#ar = [1,2,3,4,-5,5,-100]
#puts sum ar
#---------------------------------#
def max_2_sum arr
  # YOUR CODE HERE
          if arr.empty?
             return 0 
          end
          if arr.length == 1
            return arr[0] 
          end
          a = arr.sort
          a[-2] + a[-1]
end
#ar = [12,1,2,-3,7,2,-6,11]
#puts max_2_sum ar
#---------------------------------#
def sum_to_n? arr, n
  # YOUR CODE HERE
  unless arr.length > 1
    return false
  end
   h=Hash.new
   arr.each{|a|
      if h.key? a 
          return true else h[n-a] = n end}
      return false
end
#ar = [1,2,3,4,5,6,7,8]
#puts sum_to_n? ar , 100
#---------------------------------#
# Part 2
def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end
#---------------------------------#
def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end
#---------------------------------#
def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  /^[10]*00$/.match(s) != nil
end
#---------------------------------#
# Part 3
class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
        raise ArgumentError if isbn.length == 0 || price <= 0
        @isbn = isbn
        @price = price
  end
  def price_as_string
        return "$%0.2f" % @price
  end
end
