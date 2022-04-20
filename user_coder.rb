class UserCoder

  def initialize
    @all_colors = %w[red orange yellow green blue purple white black]
    puts "Please choose your four colors separated by spaces between each color"
    chosen_colors = gets.split
    @colors = 4.times.map { all_colors.sample }
  end
end