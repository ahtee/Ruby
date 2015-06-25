#!/usr/bin/ruby
#This program was written by ben otte

#Get the name from the user
print "Enter a name: "
name = gets.chomp.to_s

#genusername method ggenerates usernames with a random number from user input.
def genusername(str) 
	a = Array.new(0)
	a = str.split
	#generate a random number for the username
	randomnumber =Random.new
	r= randomnumber.rand(1..9)
	#check to see if the name matches the regular expression
	if (str=~/^[[:alpha:]]+[[:space:]]+[[:alpha:]]+[[:space:]]*[[:alpha:]]*$/)
		username = (a[-1].to_s + str[0,1].to_s).downcase + r.to_s
		#print the username generated
		puts username
		print "Enter a name: "
		s= gets.chomp
		#unless the user enters quit, keep asking for names
		unless s == "quit"
			genusername(s)
		end
	else
		#if the input name does not match the reg expression, do this
		puts "Invalid name"
		print "Enter a name: "
		s = gets.chomp
		#unless the user enters quit, keep asking for names
		unless s == "quit"
			genusername(s)
		end
	end		
end

#call method genusername()
genusername(name)

