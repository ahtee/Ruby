#!/usr/bin/ruby

#This program was written by Ben Otte

bit=1
byte=8
kilobyte =1024 * byte
megabyte = 1024 * kilobyte
myDrive=30

puts "The drive can hold " + (megabyte* myDrive).to_s + " bits of data."


