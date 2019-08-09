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

  end

  def pos=(val)
    self.pos = val
  end

  def row
    pos[0]
  end

  def col
    pos[1]
  end

  def symbol
    
  
  end
  
  def piece?
    true
  end
  
  private 
  def move_into_check?(end_pos)
  
  end
end


class Rook < Piece
   include Slideable
  def symbol
    "♖"
  end

  def move_dirs
    LINEAR_DIRS
  end
  
end

class Bishop < Piece
  include Slideable
  def symbol
    "♗"
  end

  def move_dirs
    DIAGONAL_DIRS

  end
end

class Queen < Piece
   include Slideable
  def symbol
    "♕"
  end

  def move_dirs
    DIAGONAL_DIRS
    HORIZONTAL_DIRS
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




