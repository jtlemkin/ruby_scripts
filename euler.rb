def of_3_and_5

	sum = 0

	1000.times do |x|
		if x % 3 == 0 or x % 5 == 0
			sum += x
		end
	end

	sum

end

def even_fib

	sum = 0
	x = 1
	y = 2
	z = x + y

	while z < 4000000
		if z % 2 == 0
			sum += z
		end

		x = y
		y = z
		z = x + y
	end

	sum

end

def is_prime? num

	(2...num).step(2) do |i|
		return false if num % i == 0
	end

	return true

end

def greatest_prime_factor num

	(num).downto(2) do |x|
		if num % x == 0 and is_prime? x
			return x
		end
	end

end

puts of_3_and_5
puts even_fib
puts greatest_prime_factor 10000000
/puts greatest_prime_factor 13/
