def greet()

	puts "What is your first name?"
	first = gets.chomp
	puts "Middle?"
	middle = gets.chomp
	puts "Last?"
	last = gets.chomp

	puts "Nice to meet you, " + first + " " + middle + " " + last + "!"

end

def one_up()

	puts "What is your favorite number?"
	fav = gets.chomp

	puts fav + " is great, but we think " + (fav.to_i + 1).to_s + " is better!"

end

#greet()
one_up()
