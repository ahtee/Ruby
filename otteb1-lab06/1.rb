#!/usr/bin/ruby
#This program was written by Ben Otte		
puts "Enter the first integer value: "
x = (gets.chomp).to_i
puts "Enter the second integer value: "
y = (gets.chomp).to_i
puts "Enter the third integer value: "
z = (gets.chomp).to_i

o3 = "3 options are greater than 0."
o2 = "2 options are greater than 0."
o1 = "1 option(s) is greater than 0."
o0 = "0 options are greater than 0."

if x > 0 
	if y > 0
		if z > 0
			puts o3
		else
			puts o2
			end
	else 	   
		if z > 0
			puts o2
		else
			puts o1
 			end

	end
else
	if y > 0	
		if z > 0
			puts o2
		else
			puts o1
			end	
	else		
		if z > 0
			puts o1
		else
			puts o0
			end
	end
end
