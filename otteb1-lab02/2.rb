#!/usr/bin/ruby

#This program was written by Ben Otte
bit=1
byte = 8*bit
kilobyte = 1024*byte
megabyte = 1024*kilobyte

puts "There are " + (megabyte/byte).to_s + " bytes in a megabyte."
