def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand( 1..11 )
end

def display_card_total( total )
  puts "Your cards add up to #{ total }"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game( total )
  puts "Sorry, you hit #{ total }. Thanks for playing!"
end

def initial_round
  deal = 0
  2.times{ deal += deal_card }
  display_card_total( deal )
  deal
end

def hit?( total )
  prompt_user
  input = get_user_input
  until [ "h", "s" ].include?( input )
    invalid_command
    prompt_user
    input = get_user_input
  end
  total += deal_card if input == "h"
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  player_total = initial_round
  until player_total > 21
    player_total = hit?( player_total )
    display_card_total( player_total )
  end
  end_game( player_total )
end
    
