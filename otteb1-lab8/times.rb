#!/usr/bin/ruby

#This program was written by Ben Otte
print "Please input x:    "
x = gets.to_i

while x<1
	print "Please input a positive value for x: "
	x = gets.to_i
end
print "Please input y:    "
y = gets.to_i

#Define a new function that takes the input numbers from the user and makes 
#a times table out of the numbers

def timesTable(x,y)
	a=1
	while a <= x
		puts a.to_s + " x " + y.to_s+ " = " + (y*a).to_s 	
		a+=1
	end
end		




timesTable(x,y)
