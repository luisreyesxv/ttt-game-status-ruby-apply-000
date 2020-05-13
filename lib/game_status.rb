# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[
[0,1,2],
[3,4,5],
[6,7,8],
[0,4,8],
[2,4,6],
[0,3,6],
[1,4,7],
[2,5,8]
]

def won? (board)

  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    if board[win_index_1] == board[win_index_2] && board[win_index_2] == board[win_index_3]
      if win_combination.detect{ |position_check| position_taken?(position_check) == true} == [true, true, true]
        return win_combination
      else
        return false
    end
#&& position_taken?(board,win_index_1) == true && position_taken?(board,win_index_2) == true && position_taken?(board,win_index_2) == true

  end




end
