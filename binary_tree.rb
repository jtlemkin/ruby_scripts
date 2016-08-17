class Node
	attr_accessor :value, :parent, :left, :right

	def initialize(value, parent = nil)
		@value = value
		@parent = parent
		@child = nil
	end
end

class BinaryTree
	attr_accessor :root

	def initialize(arr)
		@root = Node.new(arr[0])
		build_tree(arr)
	end

	def build_tree(arr)
		arr[1..-1].each {|node| insert(node)}
	end

	def insert(node_data)
		parent = get_parent(node_data)
		new_node = Node.new(node_data, parent)
		if node_data <= parent.value 
			parent.left = new_node
		else 
			parent.right = new_node
		end
	end

	def get_child(root, node_data)
		node_data <= root.value ? child = root.left : child = root.right 
	end

	def get_parent(node_data)
		n = @root
		child = get_child(n, node_data)
		until child.nil?
			n = child
			child = get_child(n, node_data)
		end
		n
	end

	def to_s
		display(@root)
	end

	def display(node)
		display(node.left) unless node.left.nil?
		puts node.value
		display(node.right) unless node.right.nil?
	end

	def breadth_first_search(node_data)
		queue = [@root]

		until queue.empty?
			node = queue.shift
			return node if node.value == node_data
			queue << node.left if node.left
			queue << node.right if node.right
		end

		nil
	end

	def depth_first_search(node_data)
		stack = [@root]

		until stack.empty?
			node = stack.pop
			return node if node.value == node_data
			stack << node.left if node.left
			stack << node.right if node.right
		end

		nil
	end

	def dfs_rec(node_data)
		dfs_rec_helper(node_data, @root)
	end

	def dfs_rec_helper(node_data, root)
		return nil if root.nil?
		return root if root.value == node_data

		left = dfs_rec_helper(node_data, root.left) if root.left
		return left if left
		right = dfs_rec_helper(node_data, root.right) if root.right
		return right if right

		nil
	end
end

b = BinaryTree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])

#p b.display(b.root)

puts b.breadth_first_search(8)
puts b.depth_first_search(8)
puts b.dfs_rec(8)