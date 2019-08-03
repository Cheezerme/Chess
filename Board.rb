require_relative 'Piece.rb'
class Board
  #this is the method that populates the board with the desired pieces going in each spot for black and white
  def populate
    


    @board.map.with_index do |row,idx1|
      row.map.with_index do |spot,idx2|
        #pawns
        if idx1 == 1
          Piece.new(pawn,:white)
        elsif idx1 == 6
          Piece.new(pawn,:black)
        end
        #rooks
        if idx1 == 0 && idx2== 0 || idx1 == 0 && idx2== 7
          Piece.new(rook,:white)

        elsif idx1 == 8 && idx2== 0 || idx1 == 7 && idx2== 7
          Piece.new(rook,:black)
        end
      end
    end
  end

  def initialize()
    @board = Array.new(8) {Array.new(8)}
    populate
  end

  def move_piece(start_pos,end_pos)
    if self[start_pos] == nil
      raise "There is no piece there my dude"
    end
    if inside_bounds?(end_pos)      
      #move piece to the new spot and possibly remove piece in the end_pos
    end
  end
end