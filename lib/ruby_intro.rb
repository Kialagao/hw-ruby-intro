# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  arr.empty? ? 0 : arr.sum
end

def max_2_sum (arr)
  case arr.length

  when 0
  	return 0
  when 1
  	return arr.first
  else
  	max = arr.max
  	arr.delete_at(arr.index(max))
  	return max + arr.max
  end	
end

def sum_to_n? (arr, n)
  if arr.length == 1
  	return false
  end

  my_hash = Hash.new(0)

  0.upto(arr.length - 1) {
  	|i|
  	if (my_hash.value?(n - arr[i]))
  		return true
  	end
  	my_hash[i.to_s.to_sym] = arr[i]
  }
  false
end
# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant?(s)
  upper = ['A', 'E', 'I', 'O', 'U']
  lower = ['a', 'e', 'i', 'o', 'u']
  if s.length == 0 || !(s[0].to_s =~ /[A-Za-z]/)
  	return false
  end
  return !(upper.include?(s[0].to_s) || lower.include?(s[0].to_s))
end

def binary_multiple_of_4?(s)
  if s.size == 0 || ((s.count('0')) + (s.count('1')) != s.size) || (s.to_i(2) % 4  != 0)
  	return false
  else
  	true
  end
end

# Part 3

class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)
   		if isbn.size == 0 || price <= 0
   			raise ArgumentError
   		else
   			@isbn = isbn
   			@price = price
   		end
    end

    def price_as_string
    	"$" << sprintf("%.2f", @price)
    end
end

bk = BookInStock.new(101133, 39)
puts bk.isbn
