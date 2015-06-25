#!/usr/bin/ruby
#this program was written by Ben Otte

#get the command -line parameter
which = ARGV
search = which

#method that checks if the value enetered by the user matches a line in the /proc/meminfo
#file. 
def regexmatch (value)
	#a = Array.new(0)
	#For each line of the file, split the line using regex and use the parts of that array
	#to answer the query by the user
	File.open('/proc/meminfo').each_line do |line|
		s = line.split(/:*[[:space:]]+/)
		one = s[0].to_s
		if value == one
			#if the name from the user matches the specific line in the file, 
			#return the values from the array
			puts s[1].to_s + " " + s[2].to_s
		end
	end
		#if the command line arg is empty, tell the user that he/she needs to enter
		#a name of a line in the file.
		if ARGV.empty?
			puts "Run the program with a 'Specific Process' as a command-line parameter"
		else
			puts "No such field"	
		end
end
#call method
regexmatch(search)
