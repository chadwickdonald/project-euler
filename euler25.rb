# What is the first term in the Fibonacci sequence to contain 1000 digits?


class Euler25
	require 'fibonacci' 

	p "Project Euler Problem 25"
	p Fibonacci.new(10000).get_sequence

	fib = Fibonacci.new(10000).get_sequence
	i = 0
	first_term = false

	until (first_term) do
		if (String(fib[i]).length == 3)	
			p fib[i]
			first_term = true
		end
		i += 1
	end

end

