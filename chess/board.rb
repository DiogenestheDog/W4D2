require "piece.rb"

class Board

  attr_reader :rows

  def initialize()
    @sentinel = "null_piece"
    @rows = Array.new(8) { Array.new(8)}

    @rows.each_with_index do |row, i|
      if i <= 1 || i >= 6
        row.map! { |pos| pos = Piece.new }
      end
    end
  end

  def move_piece(start_pos, end_pos)
    self.rows[end_pos] = self.rows[start_pos]
    if start_pos == nil 
      raise "no piece"
    end
    if end_pos == nil
      raise "no space to move"
    end 
  end

  def [](pos)
    row, col = pos
    self.rows[row][col]
  end

  def []=(pos, piece)
    self.rows[pos] = piece
  end
end

class NoNullPiece < Piece
  
end