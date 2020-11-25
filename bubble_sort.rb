#Optimized Bubble_Sort
def bubble_sort_algo(array)
	if array.length <= 1 
		return array
	end
	
	isSorted = false
	n = array.length
	pass = 0
	while pass < n
		isSorted = true
		step = 1
		while step < (n-pass) 
			if array[step-1]>array[step]
				array[step-1], array[step] = array[step], array[step-1]
				isSorted = false
			end
			step += 1
		end
		if isSorted
			return array
		end
		pass += 1
  end
  array
end

print bubble_sort_algo([1,2,3,4,5,6,7,8,9])
puts

def bubble_sort_algo_by(array)
	if array.length <= 1 
		return array
	end
	
	isSorted = false
	n = array.length
	pass = 0
	while pass < n
		isSorted = true
		step = 1
		while step < (n-pass) 
			if yield(array[step-1],array[step])>0
				array[step-1], array[step] = array[step], array[step-1]
				isSorted = false
			end
			step += 1
		end
		if isSorted
			return array
		end
		pass += 1
  end
  array
end 

gango = bubble_sort_algo_by(["hi","hello","hey"]) { |left,right|
  left.length - right.length
}

p gango
 

