#!/usr/bin/ruby
#This Program was written by Ben Otte
a = Array.new

puts "**I will create a list for you. Enter q to stop creating the list."
input = gets.chomp.to_s
a.push(input)
#loop that checks if the intered value is 'q'
#If it doesnt match 'q'
while input != 'q'
	puts "Enter a value: "
	input = gets.chomp
	if input == 'q'
		puts a
	else
		a.push(input)
	end
end
#print the new array (a) when the user enters q as an input


# asks the user to enter an index value in the range of the array size. once the user enters a value the index value of the array returns the array value.
#If the index entered is larger then the program outputs invalid. If the user enters -1 the program exits,


begin #Begin is starts at the location where the exception may be thrown
	puts "**Enter an index number between 0 and " + (a.length-1).to_s + " or -1 to quit: "
	index=gets.chomp.to_i
	while index != -1
                if index >= 0 and index < (a.length)
                        puts a[index.to_i]
                        puts "**Enter an index number between 0 and " + (a.length-1).to_s + " or -1 to quit: "
                        index=gets.chomp.to_i
			if index >= a.length
				puts "Invalid input" 
				raise IndexError 	
			end
                end
	end
	#Catch should go here
	rescue IndexError
                        puts "**Enter an index number between 0 and " + (a.length-1).to_s + " or -1 to quit: "
                        index=gets.chomp.to_i
	
end
