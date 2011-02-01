#!/usr/bin/ruby

# Find the Pythagorean Triplet that sums to 1000

#	How to Generate a Pythagorean Triplet:
# m > n
# a = m^2 - n^2
# b = 2mn
# c = m^2 + n^2

s = 1000

(1..s).each do |m|
	(1..s).each do |n|
		if(m > n)
			a = (m*m) - (n*n)
			b = 2*m*n
			c = (m*m) + (n*n)
			if((a+b+c) == s)
				puts "a = #{a}"
				puts "b = #{b}"
				puts "c = #{c}"
				exit
			end
		end
	end
end
