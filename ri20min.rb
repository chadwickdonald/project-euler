class MegaGreeter
	attr_accessor :names

	def initialize(names = "world")
		@names = names
	end


	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			puts "Goodbye #{@names.join(", ")}. Come back soon."
		else 
			puts "Goodbye #{@names}. Come back soon."
		end
	end

end




if __FILE__ == $0
	mg = MegaGreeter.new
	mg.names = ["Orange", "Green", "Red", "Blue"]

	mg.say_hi
	mg.say_bye

	num1 = 37107287533902102798797998220837590246510135740250
	num2 = 46376937677490009712648124896970078050417018260538
	sum = num1 + num2
	puts sum

end

