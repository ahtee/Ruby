#!/usr/bin/ruby
#This Program was written by Ben Otte

a = Hash.new
puts "Please enter a number: "
num1 = (gets.chomp).to_i
puts "Enter a 2nd number: "
num2 = (gets.chomp).to_i
puts "Enter a 3rd number: "
num3 = (gets.chomp).to_i
a= { "abc"=>num1, "def"=>num2, "ghi"=>num3 }
puts "The numbers you entered were: "
sum = 0 
a.each {|key,value| puts "#{value}"
			sum = sum + ("#{value}").to_i }

puts "The sum of those numbers is " + (sum).to_s

