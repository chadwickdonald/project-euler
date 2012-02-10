timer_start = Time.now

require 'mathn'

max = 20
sum = 0
Prime.each { |x|
	break if x> max;
	sum+=x }

p sum

p "Elapsed time: #{(Time.now - timer_start)*1000} milliseconds"


