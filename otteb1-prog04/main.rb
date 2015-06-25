#!/usr/bin/ruby
#This program was written by Ben Otte
"Please review the file,The program does not run and I was not sure how to properly execute some tasks in this program. I added pseudocode where I could in each of the individual files."

#import optparse library
require 'optparse'

#create a new OptionParser object
op=OptionParser.new

#command line variables if no options are presented
optR = STDIN
optL = STDERR
optC = 5

#if options are presented in the command line, do the following block
op.on("-r", "--read", "Open Request File" ) do |r|
	optR = r
end
op.on("-l", "--list", "Open Log File") do |l|
	optL = l
end
op.on("-c", "--c") do |c|
	optC = c
end
#end block

#if the values for optR or optL are true, do the following block
if optR
	#open Request file
	output = File.open('#The Request File', 'r')
	output.each_line do |r|
		puts r
	end
end

if optL
	#Open Log File
	output = File.open('#The Log File', 'r')
	output.each_line do |l|
		puts l
	end
end
#end block

#create a Proxy instance 
#Invoke process Requests method on Proxy instance
#Invoke logStatistics method on Procy instance 
proxy = Proxy.new(optR, optL, optC)
proxy.processrequests
proxy.logstatistics
