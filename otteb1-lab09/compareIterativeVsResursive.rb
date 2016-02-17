#!/usr/bin/ruby
#This program was written by Ben Otte.
#The program compares the time it takes to execute 
#an iterative function vs a recursive function.

#iterative function
def factorialL(n)
	#if the number is > 1, perform the following non-recursive loop
		i = 1
		answer = 1
		for i in 1..n
			answer *= i
		end
	
	 
end
#recursive function
def factorialR(n)
	if n == 0
		answer=1
	else
		answer= factorialR(n-1)*n
	end
end

t_start=Time.now
puts factorialL(16)
t_stop=Time.now
puts "The iterative loop execution time is " + (t_stop - t_start).to_s

t_start=Time.now
puts factorialR(16)
t_stop=Time.now
puts "The recursive execution time is " + (t_stop-t_start).to_s
