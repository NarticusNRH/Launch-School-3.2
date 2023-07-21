#Which Collection?
#Rewrite car as a nested array containing the same key-value pairs.

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car2 = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
p car
p car2