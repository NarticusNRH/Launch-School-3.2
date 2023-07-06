#Your Age in Months
#Write a program that asks the user for their age in years, and then converts that age to months.

puts ">> Hello, please input your age in years: "
input = gets.chomp.to_i * 12
puts "You are #{input} months old!"