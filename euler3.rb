puts "Project Euler Problem 3"

# prime factors of 13195 are 5, 7, 13, and 29
# find largest prime factor of 600851475143

	i = 2
	#j = 13195
	j = 600851475143
	primes = Array.new

	
	while (i <= j) 
		if (j%i == 0)
			primes.push(i)
			j = j/i
			i = 1
		end
		i += 1
	end
	
	puts primes
	
	biggest = primes[0]	
	k = 0	
	for k in 0..primes.length-1
		# compare primes[k]
		m = 0
		for m in 0..primes.length-1
			if (biggest < primes[m])
				biggest = primes[m]	
			end
			m += 1
		end
		k += 1
	end

	puts "biggest prime is #{biggest}"


