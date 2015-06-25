#!/usr/bin/ruby
#This program was written by Ben Otte
require 'date'

topics = "topics.txt"
classdays = { 2 => 1, 4 => 1 }

#Create new date (to start from the beginning of the semester)
startdate = Date.new(2014,8,19)
enddate = Date.new(2014,12,4)
drange = startdate..enddate
#Create an array to list the topics later
fileArray = Array.new
f = IO.readlines("topics.txt")
f.each do |line|
	fileArray.push line
end

#From the start date, get every class day and print it out, followed by the topic that we just got from the list.
i =0
startdate.upto(enddate) do |date|
	if classdays[date.wday]	
		puts date.to_s + ": " + fileArray[i].to_s
		i+=1
	end
end
