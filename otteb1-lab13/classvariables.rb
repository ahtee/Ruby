#!/usr/bin/ruby

class Student
	@@total=0
	def initialize(value)
		@name=value
		@@total=@@total+1
	end
	def total
		@@total
	end
end

s=Student.new("Tom")
s1=Student.new("Mike")
puts s1.total.to_s
