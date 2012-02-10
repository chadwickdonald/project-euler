p "Project Euler Problem 6"

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

p "2 is a prime"
p "3 is a prime"
counter = 2
prime = true
i = 4

# for i in 4..13
until (counter == 10001) do
	# p "i: #{i}"
	for j in 2..i-1
		if (i%j == 0)	
			# p "#{i} is not a prime"
			prime = false
			break # not a prime	
		end
	end
	if (prime == true)
		p "#{i} is a prime"
		counter += 1
		p "number of primes: #{counter}"
	end
	prime = true
	i += 1
end

p "counter: #{counter}"
