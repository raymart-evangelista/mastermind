require "./computer_coder.rb"
require "./computer_decoder.rb"
require "./informer.rb"
require "./user_coder.rb"
require "./user_decoder.rb"
require "./game.rb"

user = User.new
opponent = ComputerCoder.new
game = Game.new(user, opponent)
game.start_round