#Repeat Yourself
#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(str, num)
    num.times { puts str} if num > 0
end

repeat('Hello', 3)
repeat('Hello', -1)