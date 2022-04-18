module Inform
  def print_overview
    puts "----------------------------------------------"
    puts "Mastermind is a game where one player is a coder and another player is a decoder."
    puts "In this version of Mastermind, the computer coder will place four colors in a wanted order."
    puts "You will be the decoder who must guess your oppoent's secret code within a certain number of turns."
    puts "----------------------------------------------"
    puts "You will receive feedback about how good your guess was in terms of: "
    puts "\twhether a guess was exactly correct, counted in 'Matches'."
    puts "\twhether a guess was correct but in the wrong space, counted in 'Partial Matches'."
    puts "If a guess didn't meet either of those two criteria (in other words, the color is incorrect), it won't be counted."
    puts "----------------------------------------------"
    puts "For example, the computer chooses the colors ['red', 'green', 'blue', 'white']."
    puts "You choose to guess ['red', 'blue', 'black', 'green']."
    puts "You will receive the feedback: "
    puts "\tMatches: 1"
    puts "\tPartial Matches: 2"
    puts "----------------------------------------------"
  end

  def print_colors(colors)
    puts "----------------------------------------------"
    puts "These are the colors you can choose from: \n\t#{colors}"
  end

  def print_round(round, total_rounds)
    puts "****\tThe game is currently in round #{round} out of #{total_rounds}.\t****"
  end
  
  def print_feedback(matches, partial)
    puts "\tMatches: #{matches}"
    puts "\tPartial Matches: #{partial}"
  end
end