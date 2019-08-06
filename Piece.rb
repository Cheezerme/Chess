# require 'Rainbow'
class Piece
  attr_accessor :pos
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
    self.pos = val
  end

  def symbol
    #this is the parent class so there is no need for an actual symbol, never called as vanilla.
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

class Rook < Piece
  # include Slideable
  def symbol
    ♖
  end

  def move_dirs


  end
end

class Bishop < Piece
  # include Slideable
  def symbol
    ♗
  end

  def move_dirs


  end
end

class Queen < Piece
  # include Slideable
  def symbol
    ♕
  end

  def move_dirs


  end

end

class Knight < Piece
  # include Stepable
  def symbol
    ♘
  end

  def move_diffs


  end
end
class King < Piece
  # include Stepable
  def symbol
    ♔
  end

  def move_diffs


  end
end

class Pawn < Piece
    class Knight < Piece
    # include Stepable
    def symbol
      ♙
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
end
