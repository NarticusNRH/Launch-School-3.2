#Question 1
#In this hash of people and their age,
#see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.has_key?("Spot")
p ages.key?("Spot")
p ages.member?("Spot")
p ages.include?("Spot")
p ages.fetch("Spot") {|key| "No key #{key}"}
p ages.fetch("Herman") {|key| "No key #{key}"}