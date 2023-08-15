#Question 10
#Back in the stone age (before CSS) we used spaces to align things on the screen. 
#If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

num_spaces = (40 - title.length) / 2 
title.prepend(" " * num_spaces)
title << " " * num_spaces
p title

#title.center(40)