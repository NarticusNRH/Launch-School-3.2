#Question 2
#Starting with this string:
#Convert the string in the following ways (code will be executed on original munsters_description above):

munsters_description = "The Munsters are creepy in a good way."

a1 = "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
a2 = "The munsters are creepy in a good way."
a3 = "the munsters are creepy in a good way."
a4 = "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

m1 = munsters_description.swapcase 
m2 = munsters_description.capitalize
m3 = munsters_description.downcase
m4 = munsters_description.upcase

p m1 == a1
p m2 == a2
p m3 == a3
p m4 == a4