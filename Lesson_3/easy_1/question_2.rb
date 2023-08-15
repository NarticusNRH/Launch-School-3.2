=begin
Question 2
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

what is != and where should you use it?
put ! before something, like !user_name
put ! after something, like words.uniq!
put ? before something
put ? after something
put !! before something, like !!user_name
=end

1. Does not equal. In conditionals to compare objects.
2. Makes it false. ??
3. This makes words.uniq mutate the caller. Destructive.
4. ?
5. is this true or false?
6. 