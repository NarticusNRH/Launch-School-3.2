#Say Hello
#Modify the code below so "Hello!" is printed 5 times.

say_hello = true
count = 0
while say_hello
  puts 'Hello!'
  count += 1
  p count
  say_hello = false if count == 5
end

