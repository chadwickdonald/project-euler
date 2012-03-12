# Project Euler problem 16
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?


def sum_of_digits(exponential)
  number = 2**exponential	
  num_str = String(number)
  num_array = Array.new
  for i in 0..num_str.length-1
    num_array << num_str[i,1].to_i
  end
  #p num_array
  sum = 0
  num_array.each do |element|
    sum += element
  end
  sum
end
	
puts sum_of_digits(1000)	


