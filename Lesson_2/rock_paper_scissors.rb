# Rock Paper Scissors
require 'pry'
VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts(">> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'scissors' && second == 'paper')
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

choice = ''
loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
    
    break if VALID_CHOICES.include?(choice)
    prompt("That's not a valid choice. Try again.")
  end
   
  prompt("You picked #{choice}")
  computer_choice = VALID_CHOICES.sample
  prompt("Computer picked #{computer_choice}")
  # binding.pry
  display_results(choice, computer_choice)
  prompt('')
  prompt("Play again? 'y' to continue")
  break unless gets.chomp.downcase == 'y'
end

prompt("Thank you for playing! Goodbye.")