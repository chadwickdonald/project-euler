
def three_times
	yield
end

three_times {puts "jerk"}

def method1
	square = 0
	sum = 0
	[1,2,3,4].each do |value|
		square = value*value
		sum += square
		
	end
end


def fib_up_to(max)
	i1, i2 = 1, 1
	while i1 <= max
		yield i1
		i1, i2 = i2, i1+i2
	end
end

#fib_up_to(100000) {|i| print i, " "}
#puts



class Array
	def find
		for i in 0...size
			value = self[i]
			return value if yield(value)
		end
		return nil
	end
end

puts [1,4,5,6,7,9].find {|i| i > 4}




