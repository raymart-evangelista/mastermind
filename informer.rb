module Inform

  @user_choice = ""

  def self.print_overview
    puts "\t|-----------------------------------------------------------------------------------------------|"
    puts "\t|Mastermind is a game where one player is a coder and another player is a decoder.              |"
    puts "\t|You can choose to be either the coder or the decoder.                                          |"
    puts "\t|If you choose to be the decoder, the computer coder will place four colors in a wanted order.  |"
    puts "\t|You must guess your oppoent's secret code within a certain number of turns.                    |"
    puts "\t|                                                                                               |"
    puts "\t|You will receive feedback about how good your guess was in terms of:                           |"
    puts "\t|  whether a guess was exactly correct, counted in 'Matches'.                                   |"
    puts "\t|  whether a guess was correct but in the wrong space, counted in 'Partial Matches'.            |"
    puts "\t|If a guess didn't meet either of those two criteria, it won't be counted.                      |"
    puts "\t|                                                                                               |"
    puts "\t|For example, the computer chooses the colors ['red', 'green', 'blue', 'white'].                |"
    puts "\t|You choose to guess ['red', 'blue', 'black', 'green'].                                         |"
    puts "\t|You will receive the feedback:                                                                 |"
    puts "\t|  Matches: 1                                                                                   |"
    puts "\t|  Partial Matches: 2                                                                           |"
    puts "\t|-----------------------------------------------------------------------------------------------|"
    puts "\t|If you choose to be the coder, you will choose four colors that the computer will decode.      |"
    puts "\t|The computer will get a certain number of turns to decode your code.                           |"
    puts "\t|-----------------------------------------------------------------------------------------------|"

  end

  def print_colors(colors)
    puts "\t|-----------------------------------------------------------------------------------------------|"
    puts "\t\tThese are the colors you can choose from: \n\t\t#{colors}\n\n"
    puts "\t|-----------------------------------------------------------------------------------------------|"

  end

  def print_round(round, total_rounds)
    puts "\t|-----------------------------------------------------------------------------------------------|"
    puts "\t\t\t****\tThe game is currently in round #{round} out of #{total_rounds}.\t****"
    puts "\t|-----------------------------------------------------------------------------------------------|"
  end
  
  def print_feedback(matches, partial)
    puts "\n\tMatches: #{matches}"
    puts "\tPartial Matches: #{partial}"
  end

  def self.print_choices
    until @user_choice == "decode" || @user_choice == "code" do
      puts "Would you like to decode or code?: "
      @user_choice = gets.chomp
    end
    @user_choice
  end
end