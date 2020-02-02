# Your Code Here

def map(source_array)
  squared_array = []
  array_index = 0 
  while array_index < source_array.length do 
    squared_array << yield(source_array[array_index])
    array_index += 1 
  end
  return squared_array
end

# def reduce(source_array, starting_point = 0)
#   total = starting_point
#   i = 0
#   while i < source_array.length do
#     total = yield(total, source_array[i])
#     i += 1 
#   end
#   return total
# end

def reduce(array, sv = nil)
    if sv
        sum = sv 
        i = 0
    else
        sum = array[0]
        i = 1
    end

    while i < array.length do
        sum = yield(sum, array[i])
        i += 1
    end
    return sum
end