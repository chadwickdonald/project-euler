puts "Project Euler Problem 2"

	fib = Array.new

	fib[0] = 1
	fib[1] = 2
	i = 2

	while ((fib[i-1] + fib[i-2]) < 4000000)
		fib[i] = fib[i-1] + fib[i-2]
		i += 1
	end

	puts fib

	fibsum = 0

	for i in 0..fib.length-1
		if (fib[i]%2 == 0)
			fibsum = fibsum + fib[i]
			puts "adding #{fib[i]}"
		end
	end

	puts fibsum 
