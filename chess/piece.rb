module Stepable
  def moves(pos)
    possible_moves = []
    
    move_diffs.each do |diff|
      possible_moves.concat(pos[0] + diff[0], pos[1] + diff[1])
    end
    possible_moves
  end

  private 
  def move_diffs
  end
end

class Piece
  include Stepable
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
  end

  def empty?
  end

  def valid_moves
    moves(self.pos).select { |pos| board.valid_pos?(pos) }
  end

  def pos=(val)
  end

  def symbol
  end
end

class Knight < Piece
  include Stepable
   
  def move_diffs
    [[1,-2], [1,2], [-1,2], [-1,-2], [2,1], [2,-1], [-2,1], [-2,-1]]
  end
end