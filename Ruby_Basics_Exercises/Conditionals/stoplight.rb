#Stoplight (Part 1)
#In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.
#Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.


p stoplight = ['green', 'yellow', 'red'].sample

case stoplight
    when 'green'
        puts "Go!"
    when 'yellow'
        puts "Slow down!"
    else
        puts "Stop!"
end