#Question 3
#We have most of the Munster family in our age hash:
#add ages for Marilyn and Spot to the existing hash


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

#ages.merge!(additional_ages)
ages["Marilyn"] = 22
ages["Spot"] = 237
p ages
p ages["Herman"]
p ages["Spot"]