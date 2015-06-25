#!/usr/bin/ruby
#This program was written by Ben Otte
#This program returns the length of a string the user inputs.
#Function that counts the string 
def stringLength(string)
	count = 1
	if string.empty?
		return 0
	else	
		return 1+ stringLength(string.chop)		
	end
end

#Test the new function stringLength that counts the string number.
puts stringLength("")
puts stringLength("Hello")
puts stringLength("World!")
