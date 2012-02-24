p "Project Euler Problem 12"

# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# Let us list the factors of the first seven triangle numbers:
# 1: 1
# 3: 1,3
# 6: 1,2,3,6
#10: 1,2,5,10
#15: 1,3,5,15
#21: 1,3,7,21
#28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
# What is the value of the first triangle number to have over five hundred divisors?

# Tn = n(n+1)/2

class Euler12

	# gets all triangle numbers up to top and returns as an array
	def get_triangle_numbers(bottom, top)
		all_triangles = Array.new
		for i in bottom..top
			t_num = (i*(i+1))/2
			all_triangles.push(t_num)
			# p "triangle number #{i}: #{t_num}"
		end
		@triangle_numbers = all_triangles 
	end

	def get_triangle_number(x) 
		@triangle_num = (x*(x+1))/2
	end

	# gets number of divisors for some number.  returns an int
	def get_number_of_divisors(number)
		divisors = 2 # 1 and number
		if (number == 1)
			divisors = 1
		elsif (number == 2)
			divisors = 2
		else		
			for i in 2..Math.sqrt(number)
				if (number%i == 0)
					divisors += 2
				end
			end
		end
		p "number: #{number}, divisors: #{divisors}"
		if (Math.sqrt(number)*Math.sqrt(number) == number)
			divisors -= 1
		end	
		@divisors = divisors
	end
	

	def get_first_biggest(max_divisors)
		longest_divisor = 0
		i = 1
		until (false) do
			triangle = get_triangle_number(i)
			p "triangle: #{triangle}"
			divisors = get_number_of_divisors(triangle)
			if (longest_divisor < divisors)   
				longest_divisor = divisors
				if (longest_divisor >= max_divisors)
					p "****first number with at least #{max_divisors} divisors is #{triangle}"
					break
				end
			end
			i += 1
		end

	end

end


euler12 = Euler12.new
p euler12.get_first_biggest(500)
