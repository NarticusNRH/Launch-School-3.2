#What's My Value? (Part 5)
#What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
  p b.object_id
end

my_value(a)
p a.object_id
puts a

#answer is "Xyzzy"