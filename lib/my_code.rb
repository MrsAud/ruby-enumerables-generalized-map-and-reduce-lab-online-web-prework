def map(array)
  new_array = []
  counter = 0
  
  while counter < array.length do 
    new_array << yield(array[counter])
    counter += 1
  end
  
  new_array
end

def reduce(array, value = nil)
 # I need to ask for help. I don't understand how I got the solution before. I probably peeked.
 if value
   total = value
   counter = 0
 else
   total = array[0]
   counter = 1
 end
  while counter < array.length do
    total += yield(total, array[counter])
    counter += 1
  end

  total
end