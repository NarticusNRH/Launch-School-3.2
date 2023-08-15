#Bannerizer
#Write a method that will take a short line of text, and print it within a box.

def print_in_box(message)
    box_width = "+#{'-' * (message.size + 2)}+"
    box_height = "|#{' ' * (message.size + 2)}|"
    text = "| #{message} |"
    puts box_width
    puts box_height
    puts text
    puts box_height
    puts box_width
end
print_in_box('To boldly go where no one has gone before.')
print_in_box('')