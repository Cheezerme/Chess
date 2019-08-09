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