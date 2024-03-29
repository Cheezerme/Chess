module Slideable

  DIAGONAL_DIRS = [[1,1], [-1,1], [1,-1], [-1,-1]]
  HORIZONTAL_DIRS = [[0,1],[1,0],[0,-1],[-1,0]]
  def horizontal_dirs(moves)
    HORIZONTAL_DIRS.each do |val|
      (0...7).to_a.each do |move_dist|
        moves << [row+(val[0]*move_dist),col+(val[1]*move_dist)]
      end
    end
  end

  def diagonal_dirs
    movers = []
    DIAGONAL_DIRS.each do |val|
      (0...7).to_a.each do |move_dist|
        movers << [row+(val[0]*move_dist),col+(val[1]*move_dist)]
      end
    end
    movers
  end

  def moves
    moves = []
    if self.is_a?(Queen)
      moves += diagonal_dir
      moves += horizontal_dirs
    end
    if self.is_a?(Rook)
      moves += horizontal_dirs(moves)
    end
        
    if self.is_a?(Bishop)
      moves += diagonal_dirs(moves)
    end
    moves
  end
  private
  def move_dirs

  end

  private

  def grow_unblocked_moves_in_dir(dx,dy)

  end

end