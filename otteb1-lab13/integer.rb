#!/usr/bin/ruby
#This program is written by: Ben Otte


# extend the class Integer and create two different methods named to_oct and to_base where to base is defined  by any number the back-end user would input.

class Integer
	#change the number the user inputs to a desired base (where base is assumed to be less than 10)
	#I had trouble o this method because when I would call to_base on a number (n), ruby would throw an error and would say to_base does not exist.

	def to_base(b)
		string=""
		while n > 0
			string=(n%b)+string		
			n = n/b
		end
	end
	#change the number the user inputs to base 8, but call the to_base method we created
	def to_oct
		n.to_base(8)	
	end
end

#Tell the user to input a number and use base 2 for testing purposes
puts "Enter a number:\n"
n=gets.chomp
puts n.to_base(2)

