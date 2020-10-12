INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
MAX_WINS = 5

score_tracker = {
  player: 0,
  computer: 0,
  ties: 0
}

def prompt(msg)
  puts "=> #{msg}"
end

def clean_screen
  system('clear') || system('cls')
end

def welcome
  clean_screen
  <<~WLM
  Welcome to Tic Tac Toe Tournament!
  => The first player to reach 5 wins is the GRAND WINNER!
  => Goodluck!
  WLM
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimeter=', ', joined_wrd="or")
  if arr.size == 0
    ''
  elsif arr.size == 1
    arr.first
  elsif arr.size == 2
    arr.join(" #{joined_wrd} ")
  else
    arr[-1] = "#{joined_wrd} #{arr.last}"
    arr.join(delimeter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Please choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def get_threat_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{ |s, m| line.include?(s) && m == INITIAL_MARKER}.keys.first
  else
    nil
  end 
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = get_threat_square(line, brd, PLAYER_MARKER)
    break if square
  end 

  if !square
    WINNING_LINES.each do |line|
      square = get_threat_square(line, brd, COMPUTER_MARKER)
      break if square
    end 
  end 

  if !square
    square = empty_squares(brd).sample
  end 

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def scoreboard_display(score_track)
  <<~SCR
  Scoreboard:
  Player   = #{score_track[:player]}
  Computer = #{score_track[:computer]}
  Ties     = #{score_track[:ties]}
  SCR
end

def valid_answer?(ans)
  ['y', 'n'].include?(ans)
end

prompt(welcome)
loop do
  loop do
    board = initialize_board

    loop do
      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      clean_screen unless someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    clean_screen
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    if detect_winner(board) == 'Player'
      score_tracker[:player] += 1
    elsif detect_winner(board) == 'Computer'
      score_tracker[:computer] += 1
    elsif detect_winner(board).nil?
      score_tracker[:ties] += 1
    end

    prompt(scoreboard_display(score_tracker))

    if score_tracker[:player] == MAX_WINS
      prompt "Congratulations! You are the GRAND WINNER!!!"
    elsif score_tracker[:player] == MAX_WINS
      prompt "Computer won! You are not the Grand Winner"
    end

    break if score_tracker[:player] == MAX_WINS ||
             score_tracker[:computer] == MAX_WINS
  end

  answer = ''
  loop do
    prompt "Would you like to play the tournament again?"
    prompt "Please enter Y for yes or N for no."
    answer = gets.chomp.downcase
    break if valid_answer?(answer)
    prompt "Invalid response. Please enter Y for yes, N for no."
  end

  if answer.downcase.start_with?('y')
    score_tracker = {
      player: 0,
      computer: 0,
      ties: 0
    }
    clean_screen
  else
    break
  end
end

prompt "Thank you for playing the Tic Tac Toe Tournament. Have a great day!"
