#Print Something (Part 1)
#Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

puts ">> Do you want me to print somethin? (y/n)"
input = gets.chomp
puts "something" if input == 'y'
    