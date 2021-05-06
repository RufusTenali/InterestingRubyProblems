def make_chocolate(smallb, bigb, goal)
    totalb = smallb + (bigb * 5)
    if totalb != goal    
      totalb - goal
    else 
      smallb
    end 
end

p make_chocolate(4, 1, 7)