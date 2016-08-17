def caesar_cipher string, shift
	x = 0

	string.split("").each do |i|
		if /[A-Za-z]/.match(i) != nil
			if /[a-z]/.match(i) != nil
				adjust = 97
			else	
				adjust = 65
			end

			string[x] = ((i.ord - adjust + shift) % 26 + adjust).chr
		end

		x += 1
	end

	puts string
end

caesar_cipher("What a string!", 5)

#p (('Z'.ord - 65 + 5) % 26 + 65).chr