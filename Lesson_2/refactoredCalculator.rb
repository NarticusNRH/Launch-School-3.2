# Walk-through: Refactoring Calculator
# In this assignment, we'll continue working on the calculator program from before.
# We'll refactor parts of it and add some new functionality. Watch the video below and type along!
require 'pry'
def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0 || num == '0'
end

prompt('Hello! Welcome to Calculator! Enter your name: ')
name = ''
loop do
  name = gets.chomp
  break unless name.empty?

  prompt('Make sure to use a valid name.')
end
prompt("Hi, #{name}")
loop do
  num1 = nil
  num2 = nil
  operation = nil
  loop do
    prompt('Please type in a number:')
    num1 = gets.chomp
    break if valid_number?(num1)

    prompt("Hmm... that doesn't look like a valid number. Try again.")
  end
  loop do
    prompt('Please type in the second number:')
    num2 = gets.chomp
    break if valid_number?(num2)

    prompt("Hmm... that doesn't look like a valid number. Try again.")
  end
  operator_prompt = <<-MSG

  1)  Additon
  2)  Subtraction
  3)  Multiplication
  4)  Division
  MSG
  prompt("What operation would you like to perform? #{operator_prompt}")
  loop do
    operation = gets.chomp.downcase
    break if %(1 2 3 4).include?(operation)

    prompt("Hmm... that doesn't look like a valid operation. Try again.")
  end
  num1 = num1.to_f
  num2 = num2.to_f
  case operation
  when '1'
    result = num1 + num2
    sign = '+'
  when '2'
    result = num1 - num2
    sign = '-'
  when '3'
    result = num1 * num2
    sign = '*'
  when '4'
    result = num1 / num2
    sign = '/'
  end
  prompt("#{num1} #{sign} #{num2} = #{result}")
  prompt('Would you like to perform another operation? (y/n)')
  stopper = gets.chomp.downcase
  break if stopper == 'n'
end
