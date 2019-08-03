class Piece

  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    
  ##
  class NullPiece < Piece
    def initialize
      @type = nil
      @team = nil
    end
  end
end