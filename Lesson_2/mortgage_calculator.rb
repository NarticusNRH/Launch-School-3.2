# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment
# m = p * (j / (1 - (1 + j)**(-n)))

def prompt(message)
  puts ">> #{message}"
end
def valid_number?(num)
  if num.to_f < 0
    return false
  else
    return Float(num) || Integer(num) rescue false
  end
end
prompt('Hello! Welcome to the mortgage calculator!')
loop do 
  loan_amount = ''
  apr = ''
  loan_duration = ''
  monthly_interest_rate = ''
  monthly_payment = ''
  total_interest = ''
  total_amount = ''
  
  loop do  
    prompt('Please enter the loan amount:')
    loan_amount = gets.chomp
    break if valid_number?(loan_amount)
    prompt('Hmm.. that is not a valid number. Try again.')
  end
  loop do
    prompt("Please enter the APR (e.g. for 5.2% APR, type '5.2':")
    apr = gets.chomp
    break if valid_number?(apr)
    prompt('Hmm.. that is not a valid number. Try again.')
  end
  loop do 
    prompt("Please type the loan duration in months:")
    loan_duration = gets.chomp
    break if valid_number?(loan_duration)
    prompt('Hmm.. that is not a valid number. Try again.')
  end
  
  monthly_interest_rate = ((apr.to_f / 100) / 12)
  
  monthly_payment = loan_amount.to_f * (monthly_interest_rate.to_f / (1 - (1 + monthly_interest_rate.to_f)**(-loan_duration.to_f)))
  total_interest = (monthly_payment * loan_duration.to_f) - loan_amount.to_f
  total_amount = loan_amount.to_f + total_interest.to_f
  prompt('Calculating...')
  loan_info = <<-MSG
  >> - Initial Loan Amount   : #{loan_amount}
  >> - APR                   : #{apr}%
  >> - Loan Duration         : #{loan_duration} months
  >> - Monthly Interest Rate : #{format('%.10f', monthly_interest_rate)}
  >> - Monthly Payment       : #{format('%.2f', monthly_payment)}
  >> - Total Interest Paid   : #{format('%.2f', total_interest)}
  >> - Total Amount Paid     : #{format('%.2f', total_amount)}
  MSG
  puts loan_info

prompt("Would you like to calculate another mortgage? (y/n)")
break unless gets.chomp.downcase == 'y'
end



