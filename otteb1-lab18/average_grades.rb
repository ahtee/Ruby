#!/usr/bin/ruby
#This program was written by Ben Otte, also recieved help on this program.
require 'csv'

#Create a new array to insert the average and Student name.
rows = Array.new

#get the values from the Book1.csv file and insert the values into the array 'ROWS'
CSV.foreach('Book1.csv') do |record|
rows << record
end

#Write the averaged grades into the new file 'AVERAGE_GRADES.CSV'
f= File.open('average_grades.csv', 'w')

#Loop through Book1.csv and obtain the average of the test grades of each student.
l=1
while l < rows.length
   #Print student name, the value is obtained by the 'L' index that goes through the file until the end. On the x axis.
   # and the position of the CSV lines (1, 2, 3) where the number represents the value on the Y axis, if you will
   f.print rows[l][0]
	#Line Spacing
	   f.print " "
	#Compute average
   		f.print (rows[l][1].to_i + rows[l][2].to_i + rows[l][3].to_i) / 3
   	#add a new line so keep the values from staying on a single line.
   			f.print "\n"
	#go to the next line down.
   l+=1
end
