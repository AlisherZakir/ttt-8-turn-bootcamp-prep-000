def display_board(board)
  puts " #{board[0]} || #{board[1]} || #{board[2]} "
  puts "---------"
  puts " #{board[3]} || #{board[4]} || #{board[5]} "
  puts "---------"
  puts " #{board[6]} || #{board[7]} || #{board[8]} "
end

def valid_move?(board, index)
  return false if !index.between(0,8)
  return !(board[index] == "X" || board[index] == "O")
end

def move(board, index, char="X")
  board[index] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"