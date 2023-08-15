# Rock Paper Scissors Lizard Spock

require 'pry'
VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_ABREVS = %w(r p sc l sp)

def prompt(message)
  puts(">> #{message}")
end

def win?(first, second)
  (first.start_with?('r') && (second.start_with?('l') || second.start_with?('sc'))) ||
  (first.start_with?('p') && (second.start_with?('sp') || second.start_with?('r'))) ||
  (first.start_with?('sc') && (second.start_with?('l') || second.start_with?('p'))) ||
  (first.start_with?('l') && (second.start_with?('p') || second.start_with?('sp'))) ||
  (first.start_with?('sp') && (second.start_with?('sc') || second.start_with?('r')))
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

#def increment_winner(result)
  
choice = ''
player_wins = 0
computer_wins = 0
ties = 0
grand_winner = ''
prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock! Compete in a best of 5 to be the Grand Winner!")
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}.")
    prompt("You may type 'r', 'p', 'sc', 'l', 'sp', respectively.")
    choice = gets.chomp.downcase
    
    break if (VALID_CHOICES.include?(choice)) || (VALID_ABREVS.include?(choice))
    prompt("That's not a valid choice. Try again.")
  end
   
  prompt("You picked #{choice}")
  computer_choice = VALID_CHOICES.sample
  prompt("Computer picked #{computer_choice}")
  
  prompt(display_results(choice, computer_choice))
  player_wins += 1 if display_results(choice, computer_choice) == 'You won!'
  computer_wins += 1 if display_results(choice, computer_choice) == 'Computer won!'
  ties += 1 if display_results(choice, computer_choice) == "It's a tie!"
  # binding.pry
  #prompt('')
  #prompt("Play again? 'y' to continue")
  #break unless gets.chomp.downcase == 'y'
  match_stats = <<-MSG 
  
  - Player has #{player_wins} win(s).
  - Computer has #{computer_wins} wins(s).
  - #{ties} tie(s) so far.
  MSG
  if player_wins > 2
    grand_winner = 'Player'; break
  elsif computer_wins > 2
    grand_winner = 'Computer'; break
  else
    prompt(match_stats)
  end
end
prompt("#{grand_winner} is the Grand Winner! Congratulations!")
prompt("Thank you for playing! Goodbye.")