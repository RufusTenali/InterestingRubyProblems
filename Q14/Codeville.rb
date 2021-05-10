def min_boats(weights, limit)
    limit = 200
    boats = 0
    check = 0
    index = 0
  
    weights.each do |x|
      check += weights[index] 
      if check + weights[index] >= limit
        boats += 1
        check = 0
      end
      index += 1
    end
    p boats
  end
  
  min_boats([100, 200, 150, 80], 200)