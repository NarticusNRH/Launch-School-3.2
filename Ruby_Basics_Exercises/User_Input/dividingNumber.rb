#Dividing Numbers
#Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. 
#The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. 
#Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

#It returns true if the input string can be converted to an integer and back to a string without loss of information, false otherwise.
#It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
answer = nil
input1 = nil
input2 = nil
loop do
    puts "Hello! Please type the numerator: "
    input1 = gets.chomp
    if valid_number?(input1) == false
        puts "Please type a valid number."
        next
    end
    break
end
loop do
    puts "Please type the denominator (not 0) :"
    input2 = gets.chomp
    if valid_number?(input2) && input2 != "0"
        answer = input1.to_i / input2.to_i
        break
    else
        puts "Please type a valid number"
        next
    end
end
puts "#{input1.to_i} / #{input2.to_i} is #{answer} "