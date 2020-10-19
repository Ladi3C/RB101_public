SUITS = %w(H D S C)
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
TOTAL_MAX = 21
DEALER_LIMIT = 17
MAX_WINS = 5

score_tracker = {
  players_score: 0,
  dealers_score: 0,
  ties: 0
}

def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system('clear') || system('cls')
end

def display_welcome
  clear_screen
  prompt "Welcome to Twenty-One!"
  prompt "First player to reach 5 points is the Grand Winner!"
end 

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def initialize_deal (players_cards, dealers_cards, deck)
  2.times do
    players_cards << deck.pop
    dealers_cards << deck.pop
  end
end 

def display_cards(dealers_cards, players_cards, players_total)
  prompt "Dealer has #{dealers_cards[0]} and ?"
  prompt "You have: #{players_cards[0]} and #{players_cards[1]}, for a total of #{players_total}."
end 

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == 'A'
             11
           elsif value.to_i == 0
             10
           else
             value.to_i
           end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > TOTAL_MAX
  end

  sum
end

def players_turn_prompt
  prompt "Would you like to (h)it or (s)tay? Please enter h or s:"
end

def players_turn_validation
  players_turn = ''
  loop do # Validation
    players_turn = gets.chomp.downcase
    break if ['h', 's'].include?(players_turn)
    prompt "Invalid entry. You must enter h or s:"
    end
    players_turn
  end

def busted?(total_num)
  total_num > TOTAL_MAX
end

def players_hits_prompts(players_cards, players_total)
  prompt "You chose to hit!"
  prompt "Your cards are now #{players_cards}"
  prompt "Your total is now #{players_total}"
end 

def reset_scoreboard(score_track)
score_track[:players_score] = 0
score_track[:dealers_score] = 0
score_track[:ties] = 0
end

def player_stays(players_total)
  prompt "You stayed at #{players_total}"
end 

def dealers_turn_prompt
  prompt "Dealers turn . . . "
end

def dealer_hits_prompt
  prompt "Dealer hits!"
end

def dealer_shows_cards_prompt(dealers_cards)
  prompt "Dealer's cards are now: #{dealers_cards}"
end 

def detect_result(dealers_total, players_total)
  if players_total > TOTAL_MAX
    :player_busted
  elsif dealers_total > TOTAL_MAX
    :dealer_busted
  elsif dealers_total < players_total
    :player
  elsif dealers_total > players_total
    :dealer
  else
    :tie
  end
end

def display_result(dealers_total, players_total)
  result = detect_result(dealers_total, players_total)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def dis_all_cards(dealers_cards, dealers_total, players_cards, players_total)
  prompt "Dealer has #{dealers_cards}, for a total of: #{dealers_total}"
  prompt "Player has #{players_cards}, for a total of: #{players_total}"
end 

def display_dealers_grandwin
  prompt "Dealer won! You are not the Grand Winner!"
end 

def display_players_grandwin
  prompt "You are the Grand Winner, CONGRATULATIONS!"
end 

def scoreboard_display(score_track)
  <<~SCR
  Scoreboard:
  Player = #{score_track[:players_score]}
  Dealer = #{score_track[:dealers_score]}
  Ties   = #{score_track[:ties]}
  SCR
end

def play_again_validation
  prompt "Would you like to play again? (y or n)"
  answer = ''
  loop do
    answer = gets.chomp.downcase
    break if ['y', 'n'].include?(answer)
    prompt "Invalid entry. Please enter y or n:"
  end
  answer
end

display_welcome
loop do

  new_deck = initialize_deck
  player_cards = []
  dealer_cards = []

  initialize_deal(player_cards, dealer_cards, new_deck)

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  display_cards(dealer_cards, player_cards, player_total)

  loop do
    player_turn = nil
    players_turn_prompt
    player_turn = players_turn_validation
    
    if player_turn == 'h'
      player_cards << new_deck.pop
      player_total = total(player_cards)
      clear_screen
      players_hits_prompts(player_cards, player_total)
    end
    
    break if player_turn == 's' || busted?(player_total)
  end

  # PLAY AGAIN? 1
  if busted?(player_total)
    score_tracker[:dealers_score] += 1
    display_result(dealer_total, player_total)
    prompt(scoreboard_display(score_tracker))
      if score_tracker[:dealers_score] == MAX_WINS
        display_dealers_grandwin
        reset_scoreboard(score_tracker)
        bust_answer = play_again_validation
        next if bust_answer == 'y'
        break if bust_answer == 'n'
      end
    next
  else
    player_stays(player_total)
  end

  # DEALERS TURN
  dealers_turn_prompt

  loop do
    break if dealer_total >= DEALER_LIMIT

    dealer_hits_prompt
    dealer_cards << new_deck.pop
    dealer_total = total(dealer_cards)
    dealer_shows_cards_prompt(dealer_cards)
  end
  # PLAY AGAIN 2
  if busted?(dealer_total)
    score_tracker[:players_score] += 1
    prompt "Dealer total is now: #{dealer_total}"
    display_result(dealer_total, player_total)
    prompt(scoreboard_display(score_tracker))
      if score_tracker[:players_score] == MAX_WINS
        display_players_grandwin
        reset_scoreboard(score_tracker)
        answer = play_again_validation
        next if answer == 'y'
        break if answer == 'n'
      end
    next
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  dis_all_cards(dealer_cards, dealer_total, player_cards, player_total)

  if detect_result(dealer_total, player_total) == :player
    score_tracker[:players_score] += 1
  elsif detect_result(dealer_total, player_total) == :dealer
    score_tracker[:dealers_score] += 1
  elsif detect_result(dealer_total, player_total) == :tie
    score_tracker[:ties] += 1
  end

  display_result(dealer_total, player_total)
  prompt(scoreboard_display(score_tracker))

  if score_tracker[:dealers_score] == MAX_WINS
    display_dealers_grandwin
    reset_scoreboard(score_tracker)
    answer = play_again_validation
    next if answer == 'y'
    break if answer == 'n'
  elsif score_tracker[:players_score] == MAX_WINS
    display_players_grandwin
    reset_scoreboard(score_tracker)
    answer = play_again_validation
    next if answer == 'y'
    break if answer == 'n'
  end
end

prompt "Thank you for playing Twenty-One! Have a great day :)"