# The following iterative sequence is defined for the set of positive integers:
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.

max_length = 0
element = 0

for i in 13...1000000
	x=i
	sequence = Array.new
	while (x>1)
		if (x%2 == 0)
			x = x/2
		else
			x = (3*x) + 1
		end
		#puts "i: #{i}, x: #{x}"
		sequence.push(x)
	end
	if (max_length < sequence.length)
		max_length = sequence.length
		element = i
	end
	puts "element #{element} has max length of #{max_length}"
end


