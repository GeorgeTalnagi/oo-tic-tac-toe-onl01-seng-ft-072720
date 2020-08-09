require 'pry'
class TicTacToe
#setting a list of arrays that determine when you win the game 
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]
#initialize with empty board or creating 9 empty arrays 
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end 
  
#creating the board the user sees 
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} " 
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} " 
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} " 
  end 

#taking the number the user sees and changing it to match the index 
  def input_to_index(input)
    input.to_i - 1
  end 


#tracking the moves
  def move(index, player = "X")
    @board[index] = player 
  end 
  
  
#checks if the users desired move is already occupied on the board 
  def position_taken?(index)
    if @board[index] != " "
      return true  
    else 
      return false   
    end
  end
  
  
#accepts a position to check. Returns true if the move is valid, false or nil if it is not.
  def valid_move?(position)
    if position_taken?(position) || @board[position].nil?
      false
    else 
      true 
    end
  end 


#ask for input, get input, traslate input into index, if index is valid: make the move and show the board. Else: ask for imput again
def turn
  input = gets
  player_move = input_to_index(input)
  current = current_player
  if valid_move?(player_move)
    move(player_move, current)
    display_board
  else
  input = gets
  end
end
  
  
#keeping track of the turn count    
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end


#tracking whos turn it currently is 
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
#returns false/nil if no win combination is present. Returns winning combination of indexs as an array if there is a win.
  def won?
  
  end 
  
#returns true if every element of the board contains either an "X" or "O"
  def full?
    
  end 
  
#returns true if the board is full and has not been won, false if the board is won, and false if the board is neither won nor full  
  def draw?
    
  end 
  
#returns true if the board has been won or is full IE a draw 
  def over?
    
  end 
  
#Given a winning @board, the #winner method should return the token, "X" or "O" that has won the game 
  def winner
    
  end 
  
  
end 