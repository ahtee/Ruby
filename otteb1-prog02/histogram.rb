#!/usr/bin/ruby
#This program was written by Ben Otte
puts "\n\n** Welcome to Histogram.rb Program!** \nWritten by Ben Otte"

#Notify the user to enter the number of integers the user wants to generate
puts "How many random integer numbers do you want to generate? "
amt= (gets.chomp).to_i

#Notify the user of what the maximumn value of the random numbers will be
puts "Please input the maximum value for the random numbers: "
maxValue= (gets.chomp).to_i

#Create a new hash array to store the random number values for kater when we will print out the results in # format (instead of number format)
hasharray= Hash.new(0)
r = Random.new
#Begin looping 
i=1
while i <= amt
	rng = r.rand(1..maxValue)
	hasharray[rng] = hasharray[rng]+ 1
	i = i + 1
end

#Return the hash values to the user
hasharray.sort.each do |k, v|
	
	print "The frequency of #{k} | "
	while v > 0
		print "#"
		v-=1
	end
	puts "\n"
end

