#Question 5
#Programmatically determine if 42 lies between 10 and 100.

if (10..100).to_a.include?(42)
    puts "Yup"
else
    puts "Nope"
end


# (10..100).cover?(42)