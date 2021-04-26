def rps_game(array)
    abigail = 0
    benson = 0
      array.each do |throws|
       if throws[0] == "R" && throws[1] == "P"
        benson += 1
      elsif throws[0] == "R" && throws[1] == "S"
        abigail += 1
      elsif throws[0] == "P" && throws[1] == "R"
        abigail += 1
      elsif throws[0] == "P" && throws[1] == "S"
        benson += 1
      elsif throws[0] == "S" && throws[1] == "R"
        benson += 1
      elsif throws[0] == "S" && throws[1] == "P"
        abigail += 1
      end
   end
    if abigail > benson
      p "Abigail"
    elsif
      benson > abigail
      p "Benson"
    else
      p "Tie"
    end
   end
  
  rps_game([["R", "P"], ["R", "S"], ["S", "P"]])