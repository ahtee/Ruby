#!/usr/bin/ruby
#This program was written by Ben Otte
require 'gruff'
require 'rubygems'

#create a new Gruff object. Type is a bar graph. Add graph title, x&y axis labels, and min/max values.
g= Gruff::Bar.new
g.title="Average Scores"
g.x_axis_label="Student Name"
g.y_axis_label="Percentage"
g.maximum_value= 100
g.minimum_value= 50

l=Array.new(0)
#Read the file average_grades.csv and for each line in the file, add the data of each line to the graph
f=File.open('average_grades.csv', 'r')

f.each_line do |s|
	line = s.split
	next if line.include? "Username"
	g.data((line[0]).to_s, (line[1]).to_i)
end
#write data into enternal file
g.write(filename="average.png")
#close the file we opened on line 16
f.close()



