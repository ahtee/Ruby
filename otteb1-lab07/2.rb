#!/usr/bin/ruby
#This program was written by Ben Otte.

puts "Please enter a  nonnegative integer: "
num1 = (gets.chomp).to_i

if num1 < 0
	#if the number is less than 0 return that the number is negative
	puts "The number that you entered is negative."
	
else    
	#if the number is > 1, perform the following non-recursive loop
	i = 1
	answer = 1
	for i in 1..num1
		answer *= i
	end
	#puts the answer to the user
	puts  "The factorial of " + num1.to_s +  " is " + answer.to_s
end 
