#!/usr/bin/ruby
#This program was written by Ben Otte
"Was not not sure how to execute the entire program correctly, please review te pseudo code below and on the other 2 programs"

class Log
	@logfile = File.new() #instance of the file object

	def initialize(logfile)
		@logfile = File.new(logfile)
	end
	
	def log(str)
		@logfile = str + @logger.info(str) #writes str to @logfile with time stamp of str
	end
end


