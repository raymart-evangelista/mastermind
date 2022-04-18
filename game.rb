require "./computer_coder.rb"
require "./user_decoder.rb"
require "./informer.rb"

class Game

  include Inform

  @@total_rounds = 2
  @@total_colors = 4

  def initialize(user, opponent)
    @user = user
    @opponent = opponent
    @current_round = 0
    @amount_colors_chosen = 1
    @all_matched = false
  end

  def start_round
    while @current_round < @@total_rounds && @all_matched == false
      @current_round += 1
      puts "----------------------------------------------"
      Inform.print_round(@current_round, @@total_rounds)
      Inform.print_colors(@opponent.all_colors)
      user_input = false

      until @amount_colors_chosen > @@total_colors
        until @opponent.all_colors.include?(user_input) && @user.colors.one?(user_input) == false
          puts "Please choose color #{@amount_colors_chosen} of #{@@total_colors} that you did not pick yet: "
          user_input = gets.chomp.downcase
          p user_input
        end
        @user.colors.push(user_input)
        user_input = false
        @amount_colors_chosen += 1
        p @user.colors
      end
      # check the matching between user and opponent
      @all_matched = fully_matched?(@user.colors, @opponent.colors)
      puts @all_matched

      # reset amount of colors chosen and user colors chosen
      @amount_colors_chosen = 1
      @user.colors = []

    end
  end

  def fully_matched?(user_colors, opponent_colors)
    matches = 0
    partial_matches = 0

    # calculate matches and partial matches
    opponent_colors.each_index do |index|
      puts "#{opponent_colors[index]} #{user_colors[index]}"
      matches += 1 if opponent_colors[index].eql?(user_colors[index])
      partial_matches += 1 if opponent_colors.include?(user_colors[index])
    end

    partial_matches -= matches

    Inform.print_feedback(matches, partial_matches)

    if matches == 4
      return true
    else
      return false
    end
      
  end

end