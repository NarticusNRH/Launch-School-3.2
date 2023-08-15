#Stringy Strings
#Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1.
#The length of the string should match the given integer.

def stringy(int)
    count = 0
    string = ''
    while count < int
        if count.even?
            string += '1'
        else
            string += '0'
        end
        count += 1
    end
    return string
end

def stringy2(int, b = 1)
    string = ''
    int.times do |int|
        if b == 0
            number = int.even? ? 0 : 1
            string += number.to_s
        else
            number = int.even? ? 1 : 0
            string += number.to_s
        end
    end
    return string
end
#puts stringy(6) == '101010'
#puts stringy(9) == '101010101'
#puts stringy(4) == '1010'
#puts stringy(7) == '1010101'
#puts stringy(2)
puts stringy2(4)
puts stringy2(4, 0)
puts stringy2(6, 2)