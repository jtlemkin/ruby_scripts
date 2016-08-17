def bubble_sort a
	swapped = true

	until not swapped do
		swapped = false
		for i in (0...a.length - 1)
			if a[i + 1] < a[i]
				a[i], a[i + 1] = a[i + 1], a[i]
				swapped = true
			end
		end
	end

	a
end

def bubble_sort_by a
	swapped = true

	until not swapped do
		swapped = false
		for i in (0...a.length - 1)
			if yield(a[i], a[i + 1]) > 0
				a[i + 1], a[i] = a[i], a[i + 1]
				swapped = true
			end
		end
	end

	a
end

def block a
	if yield(3, 5) > 0
		puts "Hey ya!"
	end
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([5,1,4,2,8])

x = bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end

p x
