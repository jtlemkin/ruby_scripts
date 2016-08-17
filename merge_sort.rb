def merge_sort(arr)
	if arr.length <= 1
		arr
	else
		b = []
		c = []

		arr.each_with_index do |x, i|
			if i % 2 == 1
				b << x
			else
				c << x
			end
		end

		b = merge_sort(b)
		c = merge_sort(c)

		merge(b, c)
	end
end

def merge(arr1, arr2)
	a = []

	#puts arr1.class
	#puts arr2.class

	n = arr1.size + arr2.size

	until a.length == n
		puts arr1[0].class
		puts arr2[0].class

		p arr2[0]
		if arr1[0] < arr2[0]
			a << arr1[0]
			arr1 = arr1[1..-1]
		else
			a << arr2[0]
			arr2 = arr2[1..-1]
		end

		if arr1.length == 0
			a << arr2
		elsif arr2.length == 0
			a << arr1
		end
	end

	a
end

a = (1..51).to_a.shuffle

p merge_sort(a)