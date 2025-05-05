class Board
  def initialize
  end

  def display
    puts "\n"
    puts " 1 | 2 | 3 "
    puts "-----------"
    puts " 4 | 5 | 6 "
    puts "-----------"
    puts " 7 | 8 | 9 "
    puts "\n"
  end
end

board = Board.new
board.display