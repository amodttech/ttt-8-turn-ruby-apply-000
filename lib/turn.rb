def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
def valid_move?(board, index)
  index.between?(0,8) != position_taken?(board, index)
end
  
def position_taken?(board, index)
    taken = nil
    if (board[index] == " " || board[index] == "" || board[index] == nil)
      taken = false
    else
      taken = true
    end
end
  
def move(board, index, current_player = "X")
    board[index] = current_player
end
  
def input_to_index(user_input)
    user_input.to_i - 1
end
  
def turn(board)
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index, current_player = "X")
      display_board(board)
    else
      turn(board)
    end
end