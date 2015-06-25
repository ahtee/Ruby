#!/usr/bin/ruby
#This program was witten by Ben Otte
a = Array.new
puts "Please enter a number:"
a[0] = (gets.chomp).to_i
puts "Enter a 2nd number:"
a[1] = (gets.chomp).to_i
puts "Enter a 3rd number:"
a[2] = (gets.chomp).to_i
puts "The numbers you entered were:"
puts a[0..2]
puts "The sum of those numbers is " + (a[0] + a[1] + a[2]).to_s + "."
