#!/usr/bin/ruby
#This program was written by Ben Otte
puts "***************************************\nUnder what directory do you want to \nchange extensions from .txt to .text? \nInclude full path! or type '.' for current directory \nEnter 'q' to quit"
require 'fileutils'
pathname = gets.chomp	

def rename(pathname)
	currentdir = Dir.new('.')
	newfile = FileTest.exists?(pathname.to_s)
	if pathname != "q"
		if newfile == "true"
			require 'fileutils'
                	newfile.each do |f|
               	 	FileUtils.mv "#{File.dirname(f)}/#{File.basename(f, '.*')}.txt", "#{File.dirname(f)}/#{File.basename(f,'.*')}.text"
                	end
		elsif currentdir
			require 'fileutils'
			(currentdir).each do |f|
    			FileUtils.mv "#{File.dirname(f)}/#{File.basename(f, '.*')}.txt", "#{File.dirname(f)}/#{File.basename(f,'.*')}.text"
			end
		else
			puts "Invalid Path"
	
		end
	end
end

puts rename(pathname)
