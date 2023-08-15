# Walk-through: Calculator
# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

result = nil
sign = nil
loop do
  puts ">> Hello! Welcome to Calculator. Please type in a number:"
  num1 = gets.chomp.to_i
  puts ">> Please type in the second number:"
  num2 = gets.chomp.to_i
  puts ">> What operation would you like to perform? (Add, Subtract, Multiply, or Divide)"
  operation = gets.chomp.downcase
  case operation
  when "add"
    result = num1 + num2
    sign = '+'
  when "subtract"
    result = num1 - num2
    sign = '-'
  when "multiply"
    result = num1 * num2
    sign = '*'
  when "divide"
    result = num1 / num2
    sign = "/"
  end
  puts ">> #{num1} #{sign} #{num2} = #{result}"
  puts ">> Would you like to perform another operation? (y/n)"
  stopper = gets.chomp.downcase
  break if stopper == 'n'
end
