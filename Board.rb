require_relative 'Piece.rb'
class Board
  #this is the method that populates the rows with the desired pieces going in each spot for black and white
  attr_accessor :rows
  def populate
    @rows.map.with_index do |row,idx1|
      row.map.with_index do |spot,idx2|
        #pawns
        pos = pos
        if idx1 == 1
          Pawn.new(:black,self,pos)
        elsif idx1 == 6
          Pawn.new(:black,self,pos)
        end
        #rooks
        if idx1 == 0 && idx2== 0 || idx1 == 0 && idx2== 7
          Rook.new(:white,self,pos)

        elsif idx1 == 7 && idx2== 0 || idx1 == 7 && idx2== 7
          Rook.new(:black,self,pos)
        end
        #knights
        if ( idx1  == 0 && idx2 == 1 )|| (idx1 == 0 && idx2 == 7)
          Knight.new(:white,self,pos)
        elsif ( idx1  == 7 && idx2 == 1 )|| (idx1 == 7 && idx2 == 7)
          Knight.new(:black,self,pos)
        end
        #queens
        if (idx1 == 0 && idx2 == 3)
          Queen.new(:white,self,pos)
        elsif (idx1 == 0 && idx2 == 3)
          Queen.new(:white,self,pos)


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
      

    end
    
  end
    
    
   
  def [](pos)
    @board[pos[0]][pos[1]]
  end

  def []=(pos,val)
    @board[pos[0]][pos[1]] = val
  end
#method that puts desired piece at a specific pos
  def add_piece(piece,pos)

  end
#method that decides whether the current color has checkmate against the opposing team
  def checkmate?(color)


  end

  def in_check?(color)
    #checks if the color specified is in check, p much a reverse checkmate? method
  end
  #method that decides in the context of the move_piece method whether a spot is valid or not, simple in bounds stuff  
  def valid_pos?(pos)
    row,col = pos[0],pos[1]
    if row >7 || row < 0 
      return false
    end
    if col > 7 || col < 0 
      return false
    end
      return true
  end
  def find_king(color)
    #finds the pos of the kind of specified color
  end

  def pieces
    #prints out a list of the pieces including their location
  end

  def dup
    #method used to duplicate a piece, maybe for end of board pawn situations?
  end

end