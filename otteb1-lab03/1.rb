#!/usr/bin/ruby
#This lab was written by Ben Otte.

puts "I will add two numbers for you."
puts "Enter the first number:"
first = gets
puts "Enter the 2nd number:"
second = gets

first = (first.chomp).to_i
second = (second.chomp).to_i
answer= (first + second).to_i

puts first.to_s+ "\+"+ second.to_s+ "=" + (answer).to_s

