#Question 4
#The Ruby Array class has several methods for removing items from the array. 
#Two of them have very similar names. Let's see how they differ:
#What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers = [1, 2, 2, 3, 4, 5]

numbers.delete_at(1)       #element at index 1 deleted
p numbers

numbers = [1, 2, 3, 4, 5, 1]
numbers.delete(1)           #all elements matching argument (1) are deleted
p numbers