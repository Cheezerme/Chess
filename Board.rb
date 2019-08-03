require_relative 'Piece.rb'
class rows
  #this is the method that populates the rows with the desired pieces going in each spot for black and white
  attr_reader :rows
  def populate
    @rows.map.with_index do |row,idx1|
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
    @rows = Array.new(8) {Array.new(8)}
    @sentinel = NullPiece.new
  end

  def move_piece(color,start_pos,end_pos)
    if self[start_pos] == nil
      raise "There is no piece there my dude"
    end
    if valid_pos?(end_pos)      
      #move piece to the new spot and possibly remove piece in the end_pos

    end
    
    
    
    
   
  def [](pos)

  end

  def []=(pos,val)

  
  end

   
  def valid_pos?(pos)
    row,col = pos[0],pos[1]
    if row >7 || row <0 
      return false
    end
    if col > 7 || col < 0 
      return false
    end
    return true
  end
end
  
end