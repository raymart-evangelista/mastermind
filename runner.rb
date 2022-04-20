require "./computer_coder.rb"
require "./computer_decoder.rb"
require "./informer.rb"
require "./user_coder.rb"
require "./user_decoder.rb"
require "./game.rb"

# Main is used to run the Mastermind program
class Main
  include Inform

  def self.start_mastermind
    Inform.print_overview
    choice = Inform.print_choices
    case choice
    when "decode"
      user = UserDecoder.new
      opponent = ComputerCoder.new
      game = Game.new(user, opponent)
      game.start_decoder
    when "code"
      user = UserCoder.new
      opponent = ComputerDecoder.new
      game = Game.new(user, opponent)
      game.choose_colors
      game.start_coder
    end
  end
end

Main.start_mastermind

