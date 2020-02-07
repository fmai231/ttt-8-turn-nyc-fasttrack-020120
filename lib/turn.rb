

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def get_move
  puts "Please enter 1-9:"
  input = gets.strip
  input = input.to_i-1

end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end


def valid_move?(board, index) ## check if position is valid and not taken
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end


  # if !position_taken?(board, index) && index.between?(0,8)
  #   true
  # else 
  #   false
  # end

# #### `#valid_move?`

# Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.


def move(board, index, token)
  board[index] = token
  display_board(board)
end

def input_to_index(user_input)
  user_input.to_i - 1
end


def turn(board)
  puts "Please enter 1-9:"
  index = get_move
  token = "X"
  if valid_move?(board, index) == true
    move(board, index, token)
  else 
    display_board(board)
  end
end

