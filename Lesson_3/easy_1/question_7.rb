#Question 7
#If we build an array like this:
#We will end up with this "nested" array:
#Make this into an un-nested array.

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!
p flintstones
