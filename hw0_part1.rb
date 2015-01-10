#sum elements of array
def sum(array)
	sum = 0
	array.each { |num| sum += num }
	return sum
end
#sum 2 highest values
def max_2_sum(array)
	if array.length > 1
		array.sort!
		first = array[-1]
		second = array[-2]
		return first + second
	elsif array.length == 1
		return array[0]
	else
		return 0
	end
end
#do 2 values sum to n?
def sum_to_n?(array, n)
	if array.length == 0 || array.length == 1
		return false
	else
		for a in 0 ... array.size
			for b in (a+1) ... array.size
				if array[a] + array[b] == n
					return true
				end
			end
		end
		return false
	end
end