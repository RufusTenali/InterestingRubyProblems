def stocks(array)
    min = array.min
    size = array.size
    index = array.find_index(min)
    p "buy at low: #{min}"
    # p index
    p "sell at high at: #{array[index..size].max}"
  end
  
  stocks([9, 11, 8, 5, 7, 10])