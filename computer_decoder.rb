class ComputerDecoder
  attr_reader :all_colors, :colors

  def initialize
    @all_colors = %w[red orange yellow green blue purple white black]
    #@colors = 4.times.map { all_colors.sample }
  end
end