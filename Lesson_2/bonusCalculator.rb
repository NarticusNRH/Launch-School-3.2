# Calculator Bonus Features
# Better integer validation.
# The current method of validating the input for a number is very weak. 
# It's also not fully accurate, as you cannot enter a 0. Come up with a better way of validating input for integers.
require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculatorMessages.yml')
lang = 'en'
def messages(message, lang='en')
  MESSAGES[lang][message]
end
def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  Float(num) || Integer(num) rescue false
end
prompt("Espanol? '1' para si, '2' for English")
input = gets.chomp
lang = 'es' if input == '1'
#binding.pry
prompt(messages('welcome', lang))
name = ''
loop do
  name = gets.chomp
  break unless name.empty?

  prompt(messages('valid_name', lang))
end
prompt("Hi, #{name}")
loop do
  num1 = nil
  num2 = nil
  operation = nil
  loop do
    prompt(messages('first_number', lang))
    num1 = gets.chomp
    #binding.pry
    break if valid_number?(num1)

    prompt(messages('invalid_number', lang))
  end
  loop do
    prompt(messages('second_number', lang))
    num2 = gets.chomp
    break if valid_number?(num2)

    prompt(messages('invalid_number', lang))
  end
  operator_prompt = <<-MSG

  1)  Additon
  2)  Subtraction
  3)  Multiplication
  4)  Division
  MSG
  prompt("#{messages('operation', lang)} #{operator_prompt}")
  loop do
    operation = gets.chomp.downcase
    break if %(1 2 3 4).include?(operation)

    prompt(messages('invalid_op', lang))
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
  prompt(messages('continue', lang))
  stopper = gets.chomp.downcase
  break if stopper == 'n'
end
