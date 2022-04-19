module Inform
  def print_overview
    puts "----------------------------------------------"
    puts "\tMastermind is a game where one player is a coder and another player is a decoder."
    puts "\tIn this version of Mastermind, the computer coder will place four colors in a wanted order."
    puts "\tYou will be the decoder who must guess your oppoent's secret code within a certain number of turns."
    puts "----------------------------------------------"
    puts "\tYou will receive feedback about how good your guess was in terms of: "
    puts "\t\twhether a guess was exactly correct, counted in 'Matches'."
    puts "\t\twhether a guess was correct but in the wrong space, counted in 'Partial Matches'."
    puts "\tIf a guess didn't meet either of those two criteria (in other words, the color is incorrect), it won't be counted."
    puts "----------------------------------------------"
    puts "\tFor example, the computer chooses the colors ['red', 'green', 'blue', 'white']."
    puts "\tYou choose to guess ['red', 'blue', 'black', 'green']."
    puts "\tYou will receive the feedback: "
    puts "\t\tMatches: 1"
    puts "\t\tPartial Matches: 2"
    puts "----------------------------------------------"
  end

  def print_colors(colors)
    puts "----------------------------------------------"
    puts "\tThese are the colors you can choose from: \n\t#{colors}\n\n"
  end

  def print_round(round, total_rounds)
    puts "****\tThe game is currently in round #{round} out of #{total_rounds}.\t****"
  end
  
  def print_feedback(matches, partial)
    puts "\n\tMatches: #{matches}"
    puts "\tPartial Matches: #{partial}"
  end

end