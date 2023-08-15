#Question 4
#Alyssa was asked to write an implementation of a rolling buffer. 
#Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

#She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
#Is there a difference between the two, other than what operator she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  input_array = input_array + [new_element]
  input_array.shift if input_array.size > max_buffer_size
  input_array
end

arr1 = [1, 2, 3, 4]
p rolling_buffer2(arr1, 6, 5)
p arr1
p rolling_buffer1(arr1, 6, 5)
p arr1