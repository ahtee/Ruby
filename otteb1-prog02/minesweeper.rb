#!/usr/bin/ruby

def load_board
f = File.open("mines.txt")
lines = f.gets
board = Array.new
f.each_line do |lines|
	board.push(lines.chomp.split(//))
	end	
f.close
return board
end

def pp_board (board)
puts Array.new(board[0].size*2+1, '-').join('')
	board.each do |row|
	puts "|" + row.join('|') + "|"
	puts Array.new(row.size*2+1, '-').join('')
	end
end

def create_hint_board(board)
	counter = 0
	f.each_line do |c|
		if c != '*' and c != "|"
			

end

def copy_to_blank(board)
blank = Array.new
	for i in 0..(board.size-1)
	blank << Array.new(board[i].size, '.')
	end
blank
end



board = load_board
pp_board(board)
