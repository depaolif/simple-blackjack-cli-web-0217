def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = 0
  2.times do |variable|
    hand += deal_card
  end

  display_card_total(hand)
  hand
end

def hit?(hand)
  # code hit? here
  prompt_user
  ask = get_user_input
  if ask == 'h'
    hand += deal_card
  end
  return hand
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  while hand < 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
    
