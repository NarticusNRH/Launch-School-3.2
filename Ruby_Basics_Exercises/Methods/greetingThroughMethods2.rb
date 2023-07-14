#Greeting Through Methods (Part 2)
#Write a method named greet that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

def greet
    puts "#{hello} #{world}"
    puts hello + ' ' + world
end

greet

