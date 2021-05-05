def percent_filled(array)
    empty = 0
    filled = 0
    spaces = 0
    ans = 0
    arr = array.join(',')
    #p arr
    arr.split("").each do |i|
      if i == (" ")
        empty += 1
      elsif i == ("o")
        filled += 1
      end
    end
    # p empty
    # p filled
    spaces = empty + filled
    ans = (filled.to_f / spaces.to_f ) * 100
    p "#{ans.round.to_s}%"
  end
  
  percent_filled([
   "######",
    "#ooo #",
    "#oo  #",
    "#    #",
    "#    #",
    "######"
  ])