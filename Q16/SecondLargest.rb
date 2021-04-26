def second(array)
    array.sort!
    biggest = array.max
    first = array.find_index(biggest)
    second = first - 1
    p array[second]
  end
  
  second([54, 23, 11, 17, 10])