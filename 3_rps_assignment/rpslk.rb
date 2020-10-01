VALID_CHOICES = %w(rock paper scissors spock lizard)
SHORTENED_CHOICES = %w(r p s k l)
WIN_RULES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['spock', 'paper']
}
MAX_WINS = 5

score_tracker = {
  player: 0,
  computer: 0,
  ties: 0

}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def get_name
  name = ''
  loop do
    prompt('Please enter your name: ')
    name = Kernel.gets().chomp().strip().capitalize()

    break unless name.empty?() || name =~ /\d/
    prompt("Please enter a valid name, containing only letters.")
  end
  name
end

def game_rules
  <<~MSG
Scissors cuts Paper, decapitates Lizard
   Paper covers Rock, disproves Spock
   Rock crushes Lizard, crushes Scissors
   Lizard poisons Spock, eats Paper
   Spock smashes Scissors, vaporizes Rock
MSG
end

def short_chs
  <<~CHS
r is for Rock
   p is for Paper
   s is for Scissors
   k is for Spock
   l is for Lizard
  CHS
end

def convert_choice(pl_choice)
  idx = SHORTENED_CHOICES.index(pl_choice)
  VALID_CHOICES[idx]
end

def win?(first, second)
  WIN_RULES[first].include?(second)
end

def choice_prompts
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  prompt("You may also choose from #{SHORTENED_CHOICES.join(', ')}")
  prompt(short_chs)
end

def get_choice
  choice = ''
  loop do
    choice_prompts
    choice = Kernel.gets().chomp().downcase().strip()
    if VALID_CHOICES.include?(choice)
      break
    elsif SHORTENED_CHOICES.include?(choice)
      choice = convert_choice(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def valid_response?(response)
  ['y', 'n'].include?(response)
end

system 'clear'
prompt('Welcome to Rock, Paper, Scissors, Lizard, Spock Tournament!')

name = get_name

prompt("Hi! #{name}, The rules of the game are:")
prompt((game_rules).to_s)
prompt("The first player to reach five wins is the GRAND WINNER!")
loop do
  loop do
    choice = get_choice
    computer_choice = VALID_CHOICES.sample

    system 'clear'

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    if win?(choice, computer_choice)
      score_tracker[:player] += 1
    elsif win?(computer_choice, choice)
      score_tracker[:computer] += 1
    else
      score_tracker[:ties] += 1
    end

    display_results(choice, computer_choice)

    scoreboard_display = <<~SCR
    Scoreboard: 
    #{name}  = #{score_tracker[:player]}
    Computer = #{score_tracker[:computer]}
    Ties     = #{score_tracker[:ties]}
    SCR

    prompt(scoreboard_display)

    if score_tracker[:player] == MAX_WINS
      prompt("Congratulations #{name}! You are the GRAND WINNER!!!")
    elsif score_tracker[:computer] == MAX_WINS
      prompt("#{name}, you are not the Grand Winner! Computer wins!")
    end

    break if score_tracker[:player] == MAX_WINS ||
             score_tracker[:computer] == MAX_WINS
  end
  answer = ''
  loop do
    prompt("Would you like to play the tournament again?")
    prompt("Please enter Y for yes or N for no.")
    answer = Kernel.gets().chomp().downcase()
    break if valid_response?(answer)
    prompt("Invalid response. Please enter Y for yes, N for no.")
  end

  if answer.downcase().start_with?('y')
    score_tracker = {
      player: 0,
      computer: 0,
      ties: 0
    }
    system "clear"
  else
    break
  end
end

prompt("Thank you for playing #{name}. Have a fabulous day!")
