def sum array
	i=0
	s=0
	if arr.length = 0
		returt 0;
	end
	while (i < arr.length ) 
		s+=arr[i]
		i+=1
	end
	return s;
end

def max_2_sum array
	if array.empty?
		return 0
	else
		return array.sort.last(2).inject(:+)
	end
end

def sum_to_n? array, n
	array.combination(2).any? { |z, x| z + x == n }
end

def hello name
	return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
  	return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
	if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end
end


class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
