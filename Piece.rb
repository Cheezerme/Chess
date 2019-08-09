# require 'Rainbow'
class Piece
  attr_accessor :pos
  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
    
  end

  def to_s
    self.symbol
  end
  def valid_moves
    #returns an array of all valid move positions for specified piece (self)
  end
  def pos=(val)
    self.pos = val
  end

  def symbol
    #this is the parent class so there is no need for an actual symbol, never called as vanilla.
  
  end
  
  def piece?
    true
  end
  
  private 
  def move_into_check?(end_pos)
    #method used to check if moving that piece into specified position will put
  end
end

class NullPiece < Piece
  def initialrowsize
    @value = nil
  end
  def symbol
    #returns blank square for a null piece position
  end
end

class Rook < Piece
  # include Slideable
  def symbol
    "♖"
  end

  def move_dirs
    LINEAR_DIRS
  end
end

class Bishop < Piece
  # include Slideable
  def symbol
    "♗"
  end

  def move_dirs
    DIAGONAL_DIRS

  end
end

class Queen < Piece
  # include Slideable
  def symbol
    "♕"
  end

  def move_dirs
    DIAGONAL_DIRS
    LINEAR_DIRS
  end

end

class Knight < Piece
  # include Stepable
  def symbol
    "♘"
  end

  def move_diffs


  end
end
class King < Piece
  # include Stepable
  def symbol
    "♔"
  end

  def move_diffs


  end
end

class Pawn < Piece
    # include Stepable
    def symbol
      "♙"
    end

    def move_dirs


    end
    private
    def at_start_row?
      if self.pos[1] == 1 || self.pos[6] == 1 
        return true 
      end
    end
    private
    def forward_dir
      #returns 1 or -1 depending on poitional color factors
    end
    private 
    def forward_steps
      #method that handles step amount avaliable? idk what this is
    end

    private
    def side_attacks
      #method that checks avaliable side/diagonal position piece taking
    end
  
end
class Spot 
  def to_s
    self.symbol
  end
  def symbol
    "."
  end
  def piece?
    false
  end
end


module Slideable

  DIAGONAL_DIRS = [[1,1], [-1,1], [1,-1], [-1,-1]]
  LINEAR_DIRS = [[0,1],[1,0],[0,-1],[-1,0]]
  def horizontal_dirs

  end

  def diagonal_dirs

  end

  def moves


  end

  private
  def move_dirs

  end

  private

  def grow_unblocked_moves_in_dir(dx,dy)


  end

end

end





module Stepable

  def moves

  end
  private
  def move_diffs
    if self.is_a? Knight
        return [[2,1],[1,2],[-2,1],[-1,2],[2,-1],[1,-2],[-1,-2],[-2,-1]]
    elsif self.is_a? King
        return [[1,1],[-1,1],[1,-1],[-1,-1],[0,1],[1,0],[0,-1],[-1,0]]
    end
  end


end