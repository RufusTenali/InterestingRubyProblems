def array_of_multiples(x, y)
    array = []
    count = 1
    index = 0
    until count > y
      array[index] = x * count
      count += 1
      index += 1
    end
    p array
  end
  
  array_of_multiples(12, 10)