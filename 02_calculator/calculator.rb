def add num1, num2
	return num1 + num2
end

def subtract num1, num2
	return num1 - num2
end

def sum nums
	sum_tot = 0
	nums.each do |i|
		sum_tot = sum_tot + i
	end
	return sum_tot
end

def multiply nums
	sum_tot = nums[0]
	for i in 1..nums.length-1
		sum_tot = sum_tot * nums[i]
	end
	return sum_tot
end

def power num, pow
	if num < 1
		return 0
	end

	sum_tot = 1
	for i in 1..pow
		sum_tot = sum_tot * num
	end
	return sum_tot
end

def factorial num
	if num < 1
		return 0
	elsif num == 1
		return 1
	end

	sum_tot = 1
	
	(1..num).reverse_each do |i|
		sum_tot += sum_tot * (i - 1)
	end
	
	return sum_tot
end
