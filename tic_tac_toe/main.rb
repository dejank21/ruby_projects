require_relative 'lib/board'
require_relative 'lib/game'
require_relative 'lib/display'
require_relative 'lib/player'

def play_game
  game = Game.new
  game.play
  repeate_game
end

def repeate_game
  puts "Would you like to play again? (y/n)"
  answer = gets.chomp.downcase
  if answer == 'y'
    play_game
  else
    puts "Thanks for playing!"
  end
end

play_game
# This is the main file that starts the game. It requires the necessary files and starts the game loop.
# It also handles the option to play again after the game ends.