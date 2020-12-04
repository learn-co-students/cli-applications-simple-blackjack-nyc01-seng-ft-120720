def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...12)
  return card
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp.strip
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  hand = card_one + card_two
  display_card_total(hand)
  return hand
end

def hit?(number)
  prompt_user
   hit_or_stay = get_user_input 
  if hit_or_stay == "s"
    then return number
  elsif hit_or_stay == "h"
    then return number + deal_card
  else
    invalid_command
    hit?(number)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  sum_of_all_cards = initial_round
  until sum_of_all_cards > 21
    sum_of_all_cards = hit?(sum_of_all_cards)
    display_card_total(sum_of_all_cards)
  end
  end_game(sum_of_all_cards)
end
    
