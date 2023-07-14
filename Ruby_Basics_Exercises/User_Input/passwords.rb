#Passwords
#Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. 
#Keep asking for the password until the user enters the correct password.



PASSWORD = "123"

loop do 
    puts ">> Please enter your password: "
    break if gets.chomp == PASSWORD
    puts "Invalid password!"
    next
end
puts "Welcome!"


=begin
PASSWORD = "WWWW!!!!"

loop do 
    puts ">> Please enter your password: "
    if gets.chomp == PASSWORD
        puts "Welcome!"
        break
    end
    puts ">> Invalid password!"
    next
end 
=end