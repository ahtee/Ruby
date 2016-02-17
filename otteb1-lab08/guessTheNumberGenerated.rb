#!/usr/bin/ruby
#This program is written by Ben Otte.

#This method gives feedback to the user, whether the input is too high, or too low. 
def feedback(a, g)
	tries = 1
	while g != a
                if g < a
                        puts "That's too low. Guess again: "
                        g = (gets.chomp).to_i
                        tries += 1
                elsif g > a
                        puts "That's too high. Guess again: "
                        g = (gets.chomp).to_i
                        tries += 1
                end
        end
	puts "Correct! You guessed the answer in " + tries.to_s + " tries!"
end

#PlayGame returns the range of numbers in which the user can decide.  
def playGame(max)
        puts "I am thinking of a number between 1 and " + max.to_s + "."
        puts "Make your guess: "
        answer = (1..max).to_a.sample
        guess = (gets.chomp).to_i
	feedback(answer, guess)
end

#highLow asks the user what the high value is for that range.   
def highLow
	print "What is the high end of the range?"
	max = gets.to_i
	again="yes"
	while again=="yes"
		playGame(max)
		print "Would you like to play again? (yes/no):"
		again=STDIN.gets.chomp
	end
end

#Welcome the user! XD
puts "Welcome to High Low game"
highLow	



