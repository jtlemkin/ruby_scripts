require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_file_name = "hamlet.txt"

def write_from_url(url, file_name)
	File.open(file_name, 'w'){|f| f.write(open(url).read)}
end

def puts_every_42nd_line(file_name)
	File.open(file_name, "r") do |f|
		f.readlines.each_with_index do |line, i|
			puts line if i % 42 == 41
		end
	end	
end

def puts_only_hamlet(file_name)
	is_hamlet_speaking = false

	File.open(file_name, "r") do |f|
		f.readlines.each do |line|
			if is_hamlet_speaking && (line.match(/^  [A-Z]/) || line.strip.empty?)
				is_hamlet_speaking = false
			end

			is_hamlet_speaking = true if line.match(/Ham\./)

			puts line if is_hamlet_speaking
		end
	end
end

puts_only_hamlet(local_file_name)