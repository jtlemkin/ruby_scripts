def fibs(n)
	fibs = [1, 1]

	i = 0
	until fibs.length == n
		i += 1
		fibs << fibs[i] + fibs[i - 1]
	end

	fibs
end

def fibs_rec(n)
	n == 1 || n == 2 ? 1 : fibs_rec(n - 1) + fibs_rec(n - 2)
end

puts fibs_rec(100)