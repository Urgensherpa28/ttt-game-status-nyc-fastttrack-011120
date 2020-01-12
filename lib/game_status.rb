
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  
WIN_COMBINATIONS = [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6] ]
    
def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    
  win_index_1 = win_combo[0]
  win_index_2 = win_combo[1]
  win_index_3 = win_combo[2]
  
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    end
  
    if position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  end 
  
  return false
end
  

def full?(board)
  full_board = board.all? do |space|
    space == "X" || space == "O"
  end
  return full_board
end

def draw?(board)
  if won?(board) 
    false
  elsif !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  win = won?(board)
  
  puts win.to_s 
  puts board[win[0]]
  
end

def winner(board)
  win = won?(board)

  # puts win.to_s # DEBUG
  # puts board[win[0]] # DEBUG

  # returns nil if no winner
  if !won?(board)
    return nil
  end

  return board[win[0]]

end