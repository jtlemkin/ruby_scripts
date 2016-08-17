def alphabetical()

	puts "Enter a string."
	r = gets.chomp.downcase.split(' ')

	return r.sort

end

def alphabetical()

	puts "Enter a sting."
	r = gets.chomp.downcase.split(' ')

	for i in 1...r.length

		(r.length - 1).downto(i).each do |j|

			if r[j] < r[j - 1]

				temp = r[j - 1]
				r[j - 1] = r[j]
				r[j] = temp

			end

		end

	end

	return r

end

puts alphabetical()
