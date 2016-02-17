#!/usr/bin/ruby
#This program was written by Ben Otte.
#This program gets each line of the mime.types file , separates the line, and returns each line in a hash array which we can use for reference.

#Add hash array and use value.join(',')
	hashArray = Hash.new
	file= File.new("/etc/mime.types") do |file|
	while (line = file.gets)
		next if line[0] == ?#
		next if line == "\n"
		list= line.chomp.split
		hashArray = 		
		if "#{list[1]}" != ""
			puts "#{list[0]}" + " has extensions " + "#{list[1]}"
		else
			puts "#{list[0]}" + " has no extensions"
		end
	end










lineHash = Hash.new
File.open("/etc/mime.types", "r") do |file|
        file.each_line do |line|
                next if line[0] == ?#
                next if line == "\n"
                line = line.chomp.split
                lineHash[line[0]] = line[1..-1]
        end
end
lineHash.each do |key, value|
        if value.length == 0
                puts key + ' has no extensions.'
        else
                puts key + ' has extensions ' + value.join(',')
        end
end
