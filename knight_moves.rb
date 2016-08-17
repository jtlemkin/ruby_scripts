class Move
	attr_accessor :pos, :parent

	def initialize(pos, parent = nil)
		@pos = pos
		@parent = parent
	end
end

class Link
	attr_accessor :root

	def initialize(from, to)
		@to = Move.new(to)
		@root = build_link(from, @to)
	end

	def build_link(from, to)
		queue = [to]
		pos = Move.new(nil)
		ops = 0

		until pos.pos == from
			ops += 1
			pos = queue.shift
			possible_moves(pos).each do |move|
				queue << move
			end
		end

		pos
	end

	def display
		link = get_link

		puts "You made it in #{link.length - 1} moves! Here's your path:"
		
		link.each do |pos|
			p pos
		end
	end

	def get_link
		link = []
		current = @root

		while current.parent
			link << current.pos
			current = current.parent
		end

		link << @to.pos

		link
	end
end

def knight_moves(from, to)
	Link.new(from, to).display
end

def possible_moves(pos)
	moves = []

	changes = [1, -1, 2, -2]

	changes.each do |change_x|
		changes.each do |change_y|
			unless change_x.abs == change_y.abs
				x = pos.pos[0] + change_x
				y = pos.pos[1] + change_y
				new_move = Move.new([x, y], pos)
				moves << new_move unless x > 7 || y > 7 || x < 0 || y < 0
			end
		end
	end

	moves
end

knight_moves([3,3], [4,3])
knight_moves([4,4], [4,5])