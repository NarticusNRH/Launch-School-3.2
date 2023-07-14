#Write a program that requests two integers from the user, adds them together, and then displays the result. 
#Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.
#Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.
#You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil
loop do
    loop do
        puts "Please enter a positive or negative integer: "
        num1 = gets.chomp
        break unless valid_number?(num1) == false
        puts "Invalid input. Only non-zero integers are allowed."
    end
    loop do
        puts "Please enter a positive or negative integer: "
        num2 = gets.chomp
        break unless valid_number?(num2) == false
        puts "Invalid input. Only non-zero integers are allowed."
    end
num1 = num1.to_i
num2 = num2.to_i
if num1 > 0 && num2 > 0 
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
    next
end
if (num1 < 0 && num2 < 0)
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
    next
end
break
end
puts "#{num1} + #{num2} = #{num1 + num2}"


