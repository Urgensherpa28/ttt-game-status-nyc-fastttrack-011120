
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  
WIN_COMBINATIONS = [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6] ]
    
def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    
  win_index_1 = WIN_COMBINATIONS[0]
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_3 = WIN_COMBINATIONS[2]
  
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combo
  end
  
  if position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combo
  end
  
  false
end
  
  
  
#   if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
#     top_row_win
#   elsif
#     board[sec_row_win[0]] == "X" && board[sec_row_win[1]] == "X" && board[sec_row_win[2]] == "X"
#     sec_row_win
#   elsif
#     board[third_row_win[0]] == "X" && board[third_row_win[1]] == "X" && board[third_row_win[2]] == "X"
#     third_row_win
#   elsif
#     board[left_col_win[0]] == "X" && board[left_col_win[1]] == "X" && board[left_col_win[2]] == "X"
#     left_col_win
#   end
# end
 
 