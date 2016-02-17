#!/usr/bin/ruby

#Class Methods

class Area
	def Area.rect(length,width)
		area=length*width
		puts "Area is " + area.to_s
	end
end

Area.rect(10,12)
Area.rect(5,6)
