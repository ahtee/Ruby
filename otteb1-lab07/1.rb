#!/usr/bin/ruby
#This program was written by Ben Otte.

puts "Please input x: "
numx = (gets.chomp).to_i
puts "Please input y: "
numy = (gets.chomp).to_i
c = 1
if numx > 0
	while c <= numx
		puts numy.to_s + " x " + c.to_s + " = " + (numy*c).to_s
		c += 1	
	end
end
