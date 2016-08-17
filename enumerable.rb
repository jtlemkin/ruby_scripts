module Enumerable
	def my_each
		for i in 0...self.size
			yield(self[i])
		end
	end

	def my_each_with_index
		for i in 0...self.size
			yield(self[i], i)
		end
	end

	def my_select
		r = []

		for i in 0...self.size
			if yield(self[i])
				r.push(self[i])
			end
		end

		r
	end

	def my_all?
		self.my_each do |x|
			return false if not yield(x)
		end

		true
	end

	def my_any?
		self.my_each do |x|
			return true if yield(x) 
		end

		false
	end

	def my_none?
		self.my_each do |x|
			return false if yield(x) 
		end

		true
	end

	def my_count n = nil
		count = 0

		self.my_each do |x|
			if block_given?
				count += 1 if yield(x)
			else
				count += 1 unless n != nil and n != x	
			end
		end

		count
	end

	def my_map
		r = []

		self.my_each do |x|
			r.push(yield(x))
		end

		r
	end

	def my_map &proc
		r = []

		self.my_each do |x|
			r.push(proc.call(x))
		end

		r
	end

	def my_inject num = nil
		sum = num.nil? ? 0 : num

		self.my_each do |i|
			sum = yield(sum, i)
		end

		sum
	end
end

def multiply_els a
	a.my_inject { |product, n| product * n }
end

my_proc = Proc.new { |x| x**2 }

x = [1,2,3,4,5].my_map &my_proc

p x


#p multiply_els [2,4,5]
