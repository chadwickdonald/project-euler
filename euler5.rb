puts "Project Euler Problem 5"

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# 232,792,560

	answer = 0	
	i = 20

	until (answer > 0) do
		puts "i is #{i}"
		notDivisible = false
		for j in 3..20
			if (i%j == 0) 
				#puts "divisible"
			else 
				notDivisible = true
				#puts "NOT divisible"
				break
			end
		end
		
		if (notDivisible == false)
			answer = i
		end	
		#i += 1
		i += 20
	end

	puts "smallest number is #{answer}"
