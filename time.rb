def billion_sec

	birth = Time.mktime(1999, 5, 19)
	billion = birth + 1000000000

	return billion

end

def spank

	puts "When were you born e.g (5 19 1999)"
	birthday = gets.chomp.split(' ')

	month = birthday[0]
	day = birthday[1]
	year = birthday[2]

	birth = Time.mktime(year, month, day)
	time = Time.new

	age = (time.year - birth.year)

	puts age

	for i in 1..age

		puts "SPANK!"

	end


end

puts billion_sec
spank
