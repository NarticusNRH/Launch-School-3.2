=begin
Print Something (Part 2)
In the previous exercise, you wrote a program that asks the user if they want the program to print "something". 
However, this program recognized any input as valid: if you answered anything but y, it treated it as an n response, and quit without printing anything.

Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again.
Keep asking for a response until you receive a valid y or n response. 
In addition, your program should allow both Y and N (uppercase) responses; case sensitive input is generally a poor user interface choice.
Whenever possible, accept both uppercase and lowercase inputs.

=end 

loop do 
    puts ">> Hello, do you want me to print something? (y/n)"
    input = gets.chomp
    if input.downcase == 'y'
        puts "something"
        break
    elsif input.downcase == 'n'
        break
    else
        puts ">> Please type either 'y' or 'n'."
        next
    end
end 
        