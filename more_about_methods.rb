def angry_boss() 

	puts "WHADDAYA WANT!"
	r = gets.chomp

	puts "WHADDAYA MEAN \"" + r.upcase + "\"?!? YOU'RE FIRED!!" 

end

def table_of_contents()

	line_width = 40;
	puts "Table of Contents".center line_width
	puts "Chapter 1:  Numbers".ljust(line_width/2) + "page 1".rjust(line_width/2)
	puts "Chapter 1:  Letters".ljust(line_width/2) + "page 72".rjust(line_width/2)
	puts "Chapter 1:  Variables".ljust(line_width/2) + "page 118".rjust(line_width/2)

end

#angry_boss()
table_of_contents()
