def bunny_ear(b)
    if b == 0
      return 0
    else
      return 2 + bunny_ear(b-1)
    end
  end
  
  p bunny_ear(10)