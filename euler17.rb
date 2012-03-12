# Project Euler problem 17

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.


class NumberWords
  attr_accessor :ones, :teens, :tens, :hundreds
  
  def initialize
    @ones = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => ""}
    @teens = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 0 => ""}
    @tens = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety", 0 => ""}
    @hundreds = {1 => "onehundred", 2 => "twohundred", 3 => "threehundred", 4 => "fourhundred", 5 => "fivehundred", 6 => "sixhundred", 7 => "sevenhundred", 8 => "eighthundred", 9 => "ninehundred", 0 => ""}  
  end


  def count_letters(number)
    count = 0
    for i in 1..number
	    puts "i: #{i}"
      if i < 10 
	count += @ones[i].length
      elsif i < 20 
	count += @teens[i].length
      else 
	backwards = Array.new
	length_of_num = i.to_s.length-1
	length_of_num.downto(0) do |k|
	  backwards << i.to_s[k,1].to_i
	end
	
	#len.downto(0) do |j|
	for j in 0..backwards.length-1
		#puts "j: #{j}"
	  if j == 0
		  #puts "j==0"
	    count += @ones[backwards[j]].length	  
	  elsif j == 1
		  #puts "j==1"
	    count += @tens[backwards[j]].length
	  elsif j == 2
		  #puts "j==3"
	    count += @hundreds[backwards[j]].length
	  end
	  j += 1
	end

      end	      
    end
    count    
  end


end


nw = NumberWords.new
puts nw.count_letters(500)

