class OrangeTree

	def initialize	
		@age = 0
		@height = 0
		@alive = true
		@fruit = 0
	end

	def height
		@height
	end

	def oneYearPasses
		@age += 1
		@fruit = 0

		if @age > 50
			@alive = false
			puts "The tree has died"
		end

		if @age > 3 and @alive
			@fruit = rand(4..@age)
		elsif @age < 3 and @alive
			puts "This tree is too young to bear fruit"
		else
			puts "This tree is too dead to bear fruit"
		end
	end

	def countTheOranges
		puts "There are " + @fruit.to_s + " oranges in this tree"
	end

	def pickAnOrange
		@fruit -= 1
		puts "The orange was delicious"
	end

end

tree = OrangeTree.new
51.times do |x|
	tree.oneYearPasses
	tree.countTheOranges
end
