require_relative 'Piece.rb'
require 'byebug'
class Board
  attr_accessor :rows
  

    def initialize()

      @rows = Array.new(8) {Array.new(8)}
      
      @graveyard = []
    end

    def move_piece(color,start_pos,end_pos)
      if self[start_pos] == nil
        raise "There is no piece there my dude"
      end
      if self[start_pos].moves.include?(end_pos)
        if valid_pos?(end_pos)      
          if self[end_pos].piece?
            @graveyard << self[end_pos]
          end
          self[end_pos],self[start_pos] = self[start_pos],Spot.new
        end
      end
    end
      
      
    
    def [](pos)
      @rows[pos[0]][pos[1]]
    end


    def []=(pos,val)
      @rows[pos[0]][pos[1]] = val

    end
  #method that puts desired piece at a specific pos
    

  def populate
      @rows.each.with_index do |row,idx1|
        row.each.with_index do |spot,idx2|
          #pawns
          
          pos = [idx1,idx2]
          if idx1 == 1
            @rows[idx1][idx2] = Pawn.new(:black,self,pos)
          elsif idx1 == 6
            @rows[idx1][idx2] = Pawn.new(:black,self,pos)
          end
          #rooks
          if (idx1 == 0 && idx2== 0) || (idx1 == 0 && idx2== 7)
            @rows[idx1][idx2] = Rook.new(:white,self,pos)

          elsif (idx1 == 7 && idx2== 0) || (idx1 == 7 && idx2== 7)
            @rows[idx1][idx2] = Rook.new(:black,self,pos)
          end

          #bishops
          if idx1 == 0 && idx2== 2 || idx1 == 0 && idx2== 5
            @rows[idx1][idx2] = Bishop.new(:white,self,pos)

          elsif (idx1 == 7 && idx2== 2) || (idx1 == 7 && idx2== 5)
            @rows[idx1][idx2] = Bishop.new(:black,self,pos)
          end

          #knights
          if ( idx1  == 0 && idx2 == 1 )|| (idx1 == 0 && idx2 == 6)
            @rows[idx1][idx2] = Knight.new(:white,self,pos)
          elsif ( idx1  == 7 && idx2 == 1 )|| (idx1 == 7 && idx2 == 6)
            @rows[idx1][idx2] = Knight.new(:black,self,pos)
          end
          
          #queens
          if (idx1 == 7 && idx2 == 3)
            @rows[idx1][idx2] = Queen.new(:black,self,pos)
          elsif (idx1 == 0 && idx2 == 3)
            @rows[idx1][idx2] = Queen.new(:white,self,pos)
          end
          #kings
          if (idx1 == 7 && idx2 == 4)
            @rows[idx1][idx2] = King.new(:black,self,pos)
          elsif (idx1 == 0 && idx2 == 4)
            @rows[idx1][idx2] = King.new(:white,self,pos)
          end
          if @rows[idx1][idx2] == nil
            @rows[idx1][idx2] = Spot.new
          end

        end
      end
    end
    def checkmate?(color)


    end

    def in_check?(color)
    end
    def valid_pos?(pos)
      row,col = pos[0],pos[1]
      #debugger
      if row >7 || row < 0 
        return false
      end
      if col > 7 || col < 0 
        return false
      end
        return true
    end
    def find_king(color)
    end

    def pieces
    end

    def dup
    end
    def print_board
      @rows.each do |row|
        
        row.each do |spot|
        print "#{spot.symbol} "  
          
        end
        puts
      end
    end
  
end
bord = Board.new
bord.populate
bord.print_board
bord.move_piece(:white,[0,4],[7,7])
bord.print_board