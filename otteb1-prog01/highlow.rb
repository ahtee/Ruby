#!/usr/bin/ruby
#This program is written by Ben Otte.

#Had help from another student. He showed me that I needed to have a while loop
# inside the main while loop. I had the second while loop outside the first while 
# before he helped me. 

puts "What is the high end of the range?"
num = (gets.chomp).to_i
again = "yes"
while again == "yes"
	puts "I am thinking of a number between 1 and " + num.to_s + "."
	puts "Make your guess: "
	answer = (1..num).to_a.sample
	guess = (gets.chomp).to_i
	tries = 1
	while guess != answer
		if guess < answer
			puts "That's too low. Guess again: "
			guess = (gets.chomp).to_i
			tries += 1
		elsif guess > answer
			puts "That's too high. Guess again: "
			guess = (gets.chomp).to_i
			tries += 1
		end
	end
	puts "Correct! You guessed the answer in " + tries.to_s + " tries!\nWould you like to play again? (yes/no)"
	again = (gets.chomp).downcase.to_s	
end
