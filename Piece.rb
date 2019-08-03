require 'Rainbow'
class Piece

  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    #elegant way to display piece w/ proper coloring  
  end
  def valid_moves
    #returns an array of all valid move positions for specified piece (self)
  end
  def pos=(val)
    #unclear to me what this does atm
  end

  def symbol
    #something about giving the piece a good visual for printing maybe?
  end

  private 
  def move_into_check?(end_pos)
    #method used to check if moving that piece into specified position will put
  end
end

class NullPiece < Piece
  def initialize
    @value = nil
  end
  def symbol
    #returns blank square for a null piece position
  end
end

class Rook_ < Piece
  include