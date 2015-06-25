#!/usr/bin/ruby
#This program was writen by Ben Otte
"**Please Review the File, I tried completing the program via pseudocode because I was not sure how to execute some of the tasks in this program.*nd on the other 2 programs*"
class Proxy
	hash=Hash.new(0)
	@cachesz = #Maximum cache size (hash.max) 
	@regfile = #instance of File used to read input requests
	@webcache = #instance of Hash used for caching (Key = url, value = array of timestamp and string containing the cached html)
	@logger = Log.new()
	@cachehits = 0
	@cachemisses = 0

	def initialize(regfile, logfile, cachesz)
		@regfile = File.new(regfile) #(instance of File object)
		@logfile = File.new(logfile) #(instance of FIle object) 
		@cachesz = cachesz
		
	end
	
	def updateCache(url)
		#if @cachesz is full
			#remove unused LRU entry
			@webcache.each do |k, v|
				#add 'k' url variable to @webcache
				#add 'v' to to @webcache
			end
		#end
		else @webcache.each do |k , v|
			#add 'k' url variables to @webcache
			#add 'v' timestamp and string to @webcache 
		end
	end
	
	def processRequests()
		#reads and processes lines from the input file
		f = File.open('input.txt', 'r') do |x|
			#if the url value is cached,
				# it is retrieved from the cache
				#the LRU timestamp is updated. 
				#if he url exists in the cache 'k' in the Hash and
					#update the 'v' value in the Hash to the new timestamp that it was accessed.
				#end
			#else
				#updateCache(url)
			#end
		#output html content from cache (print 'v')	
		end
	end
	
	def logStatistics()
		 @logger = #value of hit or miss
			if @logger == 'hit'
				@cachehits += 1
			else
				@cachemisses += 1
			end
	end
	 
end

