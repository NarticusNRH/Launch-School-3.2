=begin 
Repeat Yourself
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

repeat('Hello', 3)


=end

def repeat(string, num)
    x = 0
    unless num < 0
        while x < num 
            puts string
            x += 1
        end 
                
    end
end
    
        
repeat('Hello', 3)