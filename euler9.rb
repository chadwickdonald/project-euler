p "Project Euler Problem 9"

# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which, a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

product = 0

for a in 1..500
	for b in 1..500
		csquared = a*a + b*b
		c = Math.sqrt(csquared)
		if (a+b+c == 1000)
			product = a*b*c
			p "a, b, c: #{a}, #{b}, #{c}"
		end
	end
end

p "product: #{product}"
