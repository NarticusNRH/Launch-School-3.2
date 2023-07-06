=begin
Launch School Printer (Part 1)
Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. 
The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.

For now, just use #to_i to convert the input value to an Integer, and check that result instead of trying to insist on a valid number;
validation of numeric input is a topic with a fair number of edge conditions that are beyond the scope of this exercise.

=end

count = nil
loop do
    puts ">> How many output lines do you want? Enter a number >= 3:"
    count = gets.chomp.to_i
    if count < 3
        puts ">> That's not enough lines."
        next
    end
    count.times do 
        puts "Launch School is the best!"
    end
    break
end