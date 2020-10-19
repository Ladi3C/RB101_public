#______________________________________CONSTANTS______________________________________
SUITS = %w(H D S C)
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
TOTAL_MAX = 21
DEALER_LIMIT = 17
MAX_WINS = 5

#______________________________________VARIABLES______________________________________
score_tracker = {
  players_score: 0,
  dealers_score: 0,
  ties: 0 
}
#_______________________________METHOD DEFINITION______________________________________
def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system('clear') || system('cls')
end

def initialize_deck
  SUITS.product(VALUES).shuffle
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

def busted?(total_num)
  total_num > TOTAL_MAX
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

def scoreboard_display(score_track)
  <<~SCR
  Scoreboard:
  Player = #{score_track[:players_score]}
  Dealer = #{score_track[:dealers_score]}
  Ties   = #{score_track[:ties]}
  SCR
end

def play_again?
  prompt "Would you like to play again? (y or n)"
  answer = gets.chomp.downcase
  answer.start_with?('y')
end
#_______________________________GAME STARTS______________________________________
clear_screen
  prompt "Welcome to Twenty-One!"
  prompt "The first player to reach 5 points is the Grand Winner!"
loop do #MAIN LOOP
  #Initialize Deck
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  #Initialize Deal
  2.times do 
    player_cards << deck.pop
    dealer_cards << deck.pop
  end 

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

# CARDS PROMPT

  prompt "Dealer has #{dealer_cards[0]} and ? "
  prompt "You have #{player_cards[0]} and #{player_cards[1]}, " +
  "for a total of #{player_total}."

# PLAYERS TURN
  loop do 
    player_turn = nil
    loop do
      loop do
        prompt "Would you like to (h)it or (s)tay? Please enter h or s: "
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Invalid entry. Please enter h or s:"  
      end 

    if player_turn == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      prompt "You chose to hit!"
      prompt "Your cards are now #{player_cards}"
      prompt "Your total is now #{player_total}"
    end 

    break if player_turn == 's' || busted?(player_total)
  end 

  if busted?(player_total)
    score_tracker[:dealers_score] += 1
    display_result(dealer_total, player_total)
    prompt(scoreboard_display(score_tracker))
  end 
  
  if score_tracker[:dealers_score] == MAX_WINS
    prompt "Dealer won all 5 rounds. You are not the Grand Winner!"
    break
  end 
  
  end 
end













































