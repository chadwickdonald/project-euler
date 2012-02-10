puts "Euler Project Problem 4"

# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# first, find all palindromes possible for 2 2-digit numbers multiplyed by each other.  
# second, go through list of palindromes doing modulo until the highest 2-digit number factor is found
# third, find the other factor (would this work)
# compare to other palindromes to find biggest 	

biggestpal = 1

for i in 1..999
	x = i
	for j in 1..999
		y = j
		product = x*y
		if (product > 9)
			productstring = String(product)	
			length = productstring.length
			# find out whether odd or even, then compare the first to last, second to second to last to 				# determine of palindrome, then compare to biggestpal
			top = 0		
			subtractor = 0
			palindrome = false	
			if (length%2 == 0) #even
				top = (length/2)-1
				subtractor = 1
			else #odd
				top = ((length/2)-1).floor
				subtractor = 0
			end
				
			for i in 0..top
				if (productstring[i] == productstring[(length-subtractor)-i])
					# a palindrome, so far
					palindrome = true
					
					p "so far: #{product}"
				else
					palindrome = false
					break 
					# not a palindrome
				end
				
			end
		end
		if (palindrome && (biggestpal < product))
			biggestpal = product
			palindrome = false
			p "palindrome: #{biggestpal}"
		end
		j += 1
	end
	i += 1
end

p "biggest palindrome: #{biggestpal}"
