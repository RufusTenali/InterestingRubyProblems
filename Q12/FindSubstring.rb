def find_string(array, string)
    one = array[0]
    two = array[1]
    vone = one + two
    vtwo = two + one
  
    if string.include? vone
      p string.index(vone)
    else
      p []
    end
    if string.include? vtwo
      p string.index(vtwo)
    else
      p []
    end
  end
  
  find_string(["cat", "dog"], "dogcatcatcodecatdog")