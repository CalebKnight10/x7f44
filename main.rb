require_relative 'game'
require_relative 'box'
require_relative 'die'

NUMBER_OF_TILES = 9
NUMBER_OF_DICE = 2
NUMBER_OF_DICE_SIDES = 6

dice = (1..NUMBER_OF_DICE).map { |i| Die.new(NUMBER_OF_DICE_SIDES) }
box = Box.new(NUMBER_OF_TILES)
game = Game.new(box, dice)

puts Game::WELCOME_MESSAGE
game.start!
game.play until game.over?
puts game.results
