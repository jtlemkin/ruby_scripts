def leap_years() 

	puts "What year would you like to start at?"
	start = gets.chomp.to_i

	puts "What year would you like to end at?"
	final = gets.chomp.to_i
	puts ""

	for i in start..final
		if i % 4 == 0 and (i % 100 != 0 or i % 400 == 0)
			puts i
		end
	end

end

leap_years()