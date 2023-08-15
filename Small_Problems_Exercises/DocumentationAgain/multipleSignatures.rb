#Multiple Signatures
#What do each of these puts statements output?

a = %w(a b c d e)
#puts a.fetch(7)                          #Error or Nil   | Error
puts a.fetch(7, 'beats me')               #'beats me'
puts a.fetch(7) { |index| index**2 }      #49 or 7        | 49

