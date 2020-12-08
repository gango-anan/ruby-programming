#METHODS
##Method for drawing the board
def draw_board(new_board)
  new_board.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      print new_board[i][j] + ' '
    end
    puts ''
  end
end

##Method to check if a player has won
def has_won(new_board)
  #check rows
  new_board.each_with_index do |row, i|
    if new_board[i][0] == new_board[i][1] && new_board[i][1] == new_board[i][2] && new_board[i][2] != '-'
      return new_board[i][0]
    end
  end

  #check columns
  new_board.each_with_index do |col, j|
    if new_board[0][j] == new_board[1][j] && new_board[1][j] == new_board[2][j] && new_board[2][j] != '-'
      return new_board[0][j] 
    end
  end

  #Check Diagonals
  if new_board[0][0] == new_board[1][1] && new_board[1][1] == new_board[2][2] && new_board[2][2] != '-'
    return new_board[0][0]
  end

  if new_board[2][0] == new_board[1][1] && new_board[1][1] == new_board[0][2] && new_board[0][2] != '-'
    return new_board[0][0]
  end

  #No one has won
  return '-'
end

##Method to check if the board is full and a tie
def has_tied(new_board)
  new_board.each_with_index do |row,i|
    row.each_with_index do |col,j|
      return false if new_board[i][j] == '-'
    end
  end
  true
end

#1. Create the board, initialize it to '-' and display the plain board
board = Array.new(3){Array.new(3){'-'}} # board = [['-','-','-'],['-','-','-'],['-','-','-']]
puts "Plain Board:"
draw_board(board)
puts ' '

#Start - get the players names  
puts "Player 1, please enter your name? "
player1 = gets.chomp
puts "Player 2, please enter your name? "
player2 = gets.chomp
puts ' '

 #2. Pick who makes the first move
is_player1 = true

 #3. Start the game and keep checking if the game has ended
game_ended = false
#p1_move_counter = 0

until game_ended
  #Assign the symbol to be used by each player
  symbol = is_player1 ? 'X' : 'O'

  #Prompt the player to make a move
  if is_player1
    puts "#{player1} make a move:"
    #p1_move_counter += 1
  else
    puts "#{player2} make a move:"
  end

 #4. Capture the move (i.e the value for the cell(row_value,col_value) they want to move to)
  row = 0
  col = 0
  while true
    puts "Enter a row(0, 1, 2):"
    row = gets.chomp.to_i
    puts "Enter a col(0, 1, 2):"
    col = gets.chomp.to_i
    #Check if the entered values of row and col are valid
    if row < 0 || col < 0 || row > (board.length-1) || col > (board[0].length-1) #check if move is on board
      puts "The move is invalid(row and col out of bounds!) please try again!"
    elsif board[row][col] != '-'  #Board position already has a X or O
      puts "Some one has already made that move."
    else #Move is valid, get out of the loop
      break
    end
  end

 #5. Represent the position moved on the board with the player's symbol
  board[row][col] = symbol

  #Print the board to check if the move is correctly captured
  draw_board(board)

 #6. Check if a player has won
  
  if has_won(board) == 'X'
    puts "Congs #{player1} , you win!"
    game_ended = true
  elsif has_won(board) == 'O'
    puts "Congs #{player2} , you win!"
    game_ended = true
  else
    if has_tied(board)
      puts "It's a tie!"
      game_ended = true
    else #Contine the game
      is_player1 = !is_player1
    end
  end

end

draw_board(board)
