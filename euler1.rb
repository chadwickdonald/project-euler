puts "Project Euler Problem 1"

	
	fizz = Array.new
	
	for i in 0..998
		j = i+1
		if (j%3 == 0 || j%5 == 0)
			fizz[i] = j
		else 
			fizz[i] = 0
		end
		
	end

	puts fizz

	sum = 0
	for i in 0..998
		sum = sum + fizz[i]
	end
	
	puts sum 

