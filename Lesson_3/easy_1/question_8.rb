#Question 8
#Given the hash below
#Create an array containing only two elements: Barney's name and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney_nums = flintstones.assoc("Barney")

p barney_nums

new_arr = []
flintstones.each_pair do |key, value|
  if key == "Barney"
    new_arr.push(key); new_arr.push(value)
  end
end
p new_arr