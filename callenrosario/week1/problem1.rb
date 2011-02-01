#!/usr/bin/ruby

# Find the sum of all numbers that are multiples of 3 or 5 and is less than 1000

sum = 0  

(1..999).each do |d|
	if(((d % 3) == 0) || ((d % 5) == 0))
		sum = sum + d
	end
end

puts sum
