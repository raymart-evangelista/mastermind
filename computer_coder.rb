require "./informer.rb"
include Inform

class Computer

  attr_reader :all_colors, :colors
  def initialize
    @all_colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple', 'white', 'black']
    @colors = all_colors.sample(4)
    puts "The computer has chosen 4 unique colors."
    p @colors
  end
end