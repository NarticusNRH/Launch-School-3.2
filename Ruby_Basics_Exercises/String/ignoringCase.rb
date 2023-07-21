#Ignoring Case
#Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. 
#Print true if the values are the same; print false if they aren't. 
#Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

name = 'Roger'

def same_letters?(name1, name2)
    name1.downcase == name2.downcase ? true : false
end

puts same_letters?(name, 'RoGeR')
puts same_letters?(name, 'DAVE')