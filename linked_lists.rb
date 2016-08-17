class LinkedList
	attr_accessor :head, :size
	def initialize
		@head = Node.new
		@size = 0
	end

	def at(index)
		if index > size
			nil
		else
			n = @head
			index.times do
				n = n.next_node
			end

			n
		end
	end

	def tail
		at(size - 1)
	end

	def append(value)
		if @size == 0
			@head.value = value
		else
			tail.next_node = Node.new(value)
		end

		@size += 1
	end

	def prepend(value)
		if @size == 0
			append(value)
		else
			n = Node.new(value)
			n.next_node = @head
			@head = n

			@size += 1
		end
	end

	def insert_at(data, index)
		if index == 0
			prepend(data)
		elsif index == @size
			append(data)
		elsif index < 0 || index > (size - 1)
			return nil
		else
			n = at(index - 1)
			new_node = Node.new(data)
			new_node.next_node = n.next_node
			n.next_node = new_node
		end
	end

	def pop
		n = at(size - 2)
		n.next_node = nil

		@size -= 1
	end

	def remove_at(index)
		if index < 0 || index > (size - 1)
			return nil
		elsif index == 0
			@head = @head.next_node
			@size -= 1
		elsif index == (size - 1)
			pop
		else
			n = at(index - 1)
			n.next_node = n.next_node.next_node
			@size -= 1
		end
	end

	def each
		n = @head
		size.times do
			yield(n)
			n = n.next_node
		end
		n
	end

	def contains?(value)
		each do |n|
			return true if n.value == value
		end

		false
	end

	def find(data)
		i = 0
		each do |n|
			if n.value == data
				return i
			else
				i += 1
			end
		end

		nil
	end

	def to_s
		s = ""
		each do |n|
			s += "( #{n.value} ) -> "
		end
		s += "nil"
	end

	def to_a
		a = []
		each do |n|
			a.push(n.value)
		end
		a
	end
end

class Node
	attr_accessor :value, :next_node

  def initialize(value = nil)  
    @value = value
    @next_node = nil
  end

  def to_s
  	@value
  end
end

n = LinkedList.new

10.times do |i|
	n.append(i)
end

puts n

n.remove_at(5)

puts n