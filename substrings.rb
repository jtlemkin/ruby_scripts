def substrings phrase, dict
	phrase = phrase.downcase
	words = phrase.split(' ')

	matches = Hash.new(0)

	words.each do |word|
		dict.each do |entry|
			if /#{entry}/.match(word)
				matches[entry] += 1
			end
		end	
	end

	p matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
