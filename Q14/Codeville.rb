def solution(weights, limit)
    # p weights.sort!
    boats = 0
    check = 0
    index = 0
  
    weights.each do |x|
      check += weights[index] 
      if check + weights[index] >= 200
        boats += 1
        check = 0
      end
      index += 1
    end
    p boats
  end
  
  solution([100, 200, 150, 80], 200)