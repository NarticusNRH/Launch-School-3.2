#Mandatory Blocks
#The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:
#How would you search this Array to find the first element whose value exceeds 8?
#require 'pry'
a = [1, 4, 8, 11, 15, 19]

value = a.bsearch { |x| x > 8 }
#binding.pry
puts value