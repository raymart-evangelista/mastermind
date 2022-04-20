require "./computer_coder.rb"
require "./user_decoder.rb"
require "./informer.rb"

class Game

  include Inform

  def initialize(user, opponent)
    @user = user
    @opponent = opponent
    @current_round = 0
    @amount_colors_chosen = 1
    @all_matched = false
    @total_rounds = 12
    @total_colors = 4
  end

  def start_decoder
    while @current_round < @total_rounds && @all_matched == false
      @current_round += 1
      print_round(@current_round, @total_rounds)
      print_colors(@opponent.all_colors)

      choose_colors

      # check the matching between user and opponent
      @all_matched = fully_matched?(@user.colors, @opponent.colors)

      # reset amount of colors chosen and user colors chosen
      @amount_colors_chosen = 1
      @user.colors = []

    end

    if @all_matched == false
      puts "You did not decode the computer's chosen colors in time!"
      puts "The computer's chosen colors were: #{@opponent.colors}"
    else
      puts "You successfully decoded the computer's chosen colors in time!"
      puts "The computer's chosen colors were: #{@opponent.colors}"
    end

  end

  def fully_matched?(decoder_colors, coder_colors)
    matches = 0
    partial_matches = 0

    # calculate matches and partial matches
    coder_colors.each_index do |index|
      if coder_colors.include?(decoder_colors[index])
        if decoder_colors[index].eql?(coder_colors[index])
          matches += 1
        else
          partial_matches += 1
        end
      end
    end

    print_feedback(matches, partial_matches)

    if matches == 4
      return true
    else
      return false
    end
      
  end

  def start_coder
    while @current_round < @total_rounds && @all_matched == false
      @current_round += 1
      print_round(@current_round, @total_rounds)
      @opponent.choose_colors
      puts "The opponent chose #{@opponent.colors}"
      @all_matched = fully_matched?(@opponent.colors, @user.colors)
      # reset amount of colors chosen and user colors chosen
      @opponent.colors = []
    end

    if @all_matched == false
      puts "The computer did not decode your chosen colors in time!"
    else
      puts "Oh no! Your code was decoded by the computer in time!"
    end
    
  end

  def choose_colors
    user_input = false
    until @amount_colors_chosen > @total_colors
      until @opponent.all_colors.include?(user_input)
        puts "Please choose color #{@amount_colors_chosen} of #{@total_colors}:"
        user_input = gets.chomp.downcase
        # p user_input
      end
      @user.colors.push(user_input)
      user_input = false
      @amount_colors_chosen += 1
    end
    
  end
end